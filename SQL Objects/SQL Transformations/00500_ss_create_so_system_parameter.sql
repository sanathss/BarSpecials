USE Auckland_Property
GO
/*****************************************************************************
-- Sanath Samarasekara 08/07/2018
-- Create table for System Parameters the system
*****************************************************************************/
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = N'dbo' AND TABLE_NAME = N'so_system_parameters')
BEGIN
	DROP TABLE dbo.so_system_parameters
END
/****************************************************************************/
CREATE TABLE dbo.so_system_parameters(
			parameter_id	   NUMERIC IDENTITY PRIMARY KEY NOT NULL,
			param_code		   VARCHAR(10) NOT NULL,
			param_name	      VARCHAR(50) NOT NULL,
			parameter		   VARCHAR(100) NOT NULL,
			insert_user		   VARCHAR(20) NOT NULL,
			insert_process	   VARCHAR(20) NOT NULL,
			insert_datetime   DATETIME NOT NULL,
			update_user		   VARCHAR(20),		
         update_process	   VARCHAR(20),
			update_datetime   DATETIME) 

GO