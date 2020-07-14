USE Bar_Mate
GO
/*****************************************************************************
-- Sanath Samarasekara 16/06/2018
-- Create table which stores information on the stores
*****************************************************************************/
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND TABLE_NAME = N'uo_store')
BEGIN
	--DROP TABLE dbo.uo_special
	DROP TABLE dbo.uo_store
END
/****************************************************************************/
CREATE TABLE dbo.uo_store(
			store_id		      NUMERIC IDENTITY PRIMARY KEY NOT NULL,
         store_identifier  VARCHAR(50)    NOT NULL,
			store_name		   VARCHAR(50)    NOT NULL,
			store_lat   	   NUMERIC(18,6)  NOT NULL,
         store_long   	   NUMERIC(18,6)  NOT NULL,
         suburb_id         NUMERIC(18)    NOT NULL,
			username		      VARCHAR(20)    NOT NULL,
			user_password	   VARCHAR(20)    NOT NULL,
			insert_user		   VARCHAR(20)    NOT NULL,
			insert_process	   VARCHAR(20)    NOT NULL,
			insert_datetime   DATETIME       NOT NULL,
			update_user		   VARCHAR(20),
			update_process	   VARCHAR(20),
			update_datetime   DATETIME)

-- Foreign key joining to the store which created the special
ALTER TABLE dbo.uo_store
ADD CONSTRAINT uo_store_suburb_id_FK FOREIGN KEY (suburb_id) 
REFERENCES dbo.uo_suburb(suburb_id)

GO