SET ANSI_NULLS, QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'dbp_locate_nearby_stores' AND type = 'P') DROP PROC dbo.dbp_locate_nearby_stores
GO

/****************************************************************************************************
 * @Proc Name:    dbp_locate_nearby_stores
 * @Date/Author:  Sanath Samarasekara
 * @Description:  Locate stores within a certain distance to a geographic point
 ****************************************************************************************************/

CREATE PROC dbo.dbp_locate_nearby_stores
       @pn_lat                NUMERIC(18),
       @pn_long               NUMERIC(18),
       @pv_specials_location  VARCHAR(100) OUTPUT
AS

SET NOCOUNT ON

CREATE TABLE #nearby_stores(
             store_id         NUMERIC(18, 0) NOT NULL,
	          store_name       VARCHAR(50) NOT NULL,
	          store_location   VARCHAR(10) NOT NULL)

INSERT INTO  #nearby_stores
            (store_id,
             store_name,
             store_location)
      SELECT store_id,
             store_name,
             store_location
        FROM uo_store s
       WHERE s.store_long = @pn_long
         AND s.store_lat  = @pn_lat

SELECT TOP 1 @pv_specials_location = store_location 
  FROM #nearby_stores

--DROP TABLE #my_table1  -- Drop temporary tables when no longer required.

GO