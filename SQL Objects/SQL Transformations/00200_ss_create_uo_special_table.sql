USE Bar_Mate
GO
/*****************************************************************************
-- Sanath Samarasekara 16/06/2018
-- Create table which stores information on Special Discounts raised by a store
*****************************************************************************/
IF EXISTS (SELECT *
			 FROM INFORMATION_SCHEMA.TABLES
			WHERE TABLE_SCHEMA = N'dbo'
			  AND TABLE_NAME = N'uo_special')
BEGIN
	DROP TABLE dbo.uo_special
END
/****************************************************************************/
CREATE TABLE dbo.uo_special(
			special_id			   NUMERIC IDENTITY PRIMARY KEY NOT NULL,
			store_id			      NUMERIC(18) NOT NULL,
			special_name		   VARCHAR(20) NOT NULL,
			special_description	VARCHAR(100),
			price				      MONEY NOT NULL,
			duration			      VARCHAR(4) NOT NULL,
			receipt_counter		NUMERIC(18),
			active				   VARCHAR(1) NOT NULL,
			insert_user			   VARCHAR(20) NOT NULL,
			insert_process		   VARCHAR(20) NOT NULL,
			insert_datetime		DATETIME NOT NULL,
			update_user			   VARCHAR(20),
			update_process		   VARCHAR(20),
			update_datetime		DATETIME) 

-- Foreign key joining to the store which created the special
ALTER TABLE dbo.uo_special
ADD CONSTRAINT uo_special_store_id_FK FOREIGN KEY (store_id) 
REFERENCES dbo.uo_store(store_id)

GO