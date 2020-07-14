USE Bar_Mate
GO
/*****************************************************************************
-- Sanath Samarasekara 16/06/2018
-- Trigger to allow C# server to respond to new Store Specials
*****************************************************************************/
IF EXISTS(SELECT * FROM sys.objects WHERE type = N'TR' AND name = N'')
BEGIN
	DROP TRIGGER newSpecial
END
GO
/****************************************************************************/
CREATE TRIGGER newSpecial ON dbo.uo_special
AFTER INSERT
AS

BEGIN
	SELECT * 
	  FROM uo_special
--Create action which will trigger C# event. For use in server application.
END

GO