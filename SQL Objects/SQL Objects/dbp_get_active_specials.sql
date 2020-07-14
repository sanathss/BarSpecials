SET ANSI_NULLS, QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE name = 'dbp_get_active_specials' AND type = 'P') DROP PROC dbo.dbp_get_active_specials
GO

/****************************************************************************************************
 * @Proc Name:    Active Specials at Stores
 * @Date/Author:  Sanath Samarasekara
 * @Description:  Returns all active specials from the store list.
 ****************************************************************************************************/

CREATE PROC dbo.dbp_get_active_specials
       @pv_nearby_store_identifiers VARCHAR(MAX)
AS

SET NOCOUNT ON

DECLARE @query VARCHAR(MAX)

SELECT @query = 'SELECT *
                   FROM uo_store   st
                   JOIN uo_special sp ON st.store_id = sp.store_id
                  WHERE sp.active = ''Y''
                    AND st.store_identifier IN (' + @pv_nearby_store_identifiers + ')'

EXEC (@query)

GO
--GRANT EXECUTE ON dbo.dbp_get_active_specials TO standard
--GO

/* -- Debugging.
   BEGIN TRAN
      EXEC dbo.dbp_get_active_specials
           @pv_nearby_store_identifiers = '''ChIJ-VL1e3RJDW0Rh3d-K0iOrBQ'',''ChIJ_3cokXZIDW0R43rbc65qQEI'',''ChIJ_QAiFXZIDW0RzdB7mr49CVk'',''ChIJ1Qj7SXRIDW0R_dsE7ACrkF0'',''ChIJ2ypOfXZIDW0RoMMkxnmnH8Q'',''ChIJ307ucXRIDW0RMz9mIWxqfXA'',''ChIJ59htGXZIDW0RO3P0toegBWw'',''ChIJ5aewdIFLDW0RXaGP-2a5AC8'',''ChIJa5ZgN3RIDW0RvvbSKQhrQVc'',''ChIJbc8XG3RIDW0RyJStvvZ_NDE'''
   ROLLBACK
*/