SET ANSI_NULLS, QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'dbp_new_device_registration' AND type = 'P') DROP PROC dbo.dbp_new_device_registration
GO

/****************************************************************************************************
 * @Proc Name:    New Device
 * @Date/Author:  Sanath Samarasekara
 * @Description:  Register a new Device in the system
 ****************************************************************************************************/

CREATE PROC dbo.dbp_new_device_registration
       @pn_identifier  NUMERIC(18),
       @pn_longitude   NUMERIC(18),
       @pn_latitude    NUMERIC(18),
       @pv_identifier  VARCHAR(50) OUTPUT
AS

SET NOCOUNT ON

DECLARE @v_user                 VARCHAR(10),
        @v_process              VARCHAR(10),
        @d_datetime             DATETIME,
        @v_identifier           VARCHAR(50),
        @g_location             GEOGRAPHY,
        @n_lat                  NUMERIC(18),
        @n_long                 NUMERIC(18)

SELECT @v_user = 'DEVICE_REG',
       @v_process = HOST_NAME(),
       @d_datetime = GETDATE()

select @n_lat = 5,
       @n_long = 6

SELECT @g_location = geography::Point(@n_lat,@n_long,4326)

SELECT @v_identifier = CONVERT(NUMERIC, @pn_identifier)

INSERT dbo.eu_user
      (user_identifier,
       insert_user,
       insert_process,
       insert_datetime)
SELECT @v_identifier,
       @v_user,
       @v_process,
       @d_datetime

--Return user_identifier
SET @pv_identifier = @v_identifier

GO
--GRANT EXECUTE ON dbo.dbp_new_device_registration TO standard
--GO

/*DECLARE @pv_test VARCHAR(50)
  exec dbp_new_device_registration 232,4,5,@pv_test
  SELECT @pv_test
*/