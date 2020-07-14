USE Bar_Mate
GO
/*****************************************************************************
-- Sanath Samarasekara 16/06/2018
-- Create table which stores Identity Information on each device
*****************************************************************************/
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND TABLE_NAME = N'eu_user')
BEGIN
	DROP TABLE dbo.eu_user
END
/****************************************************************************/
CREATE TABLE dbo.eu_user(
			user_id				NUMERIC IDENTITY PRIMARY KEY NOT NULL,
			user_identifier		VARCHAR(50) NOT NULL,
			insert_user			VARCHAR(10) NOT NULL,
			insert_process		VARCHAR(10) NOT NULL,
			insert_datetime		DATETIME NOT NULL) 

GO