BEGIN TRAN

DECLARE  @v_insert_user		   VARCHAR(10),
		   @v_insert_process	   VARCHAR(10),
		   @d_insert_datetime	DATETIME

SELECT @v_insert_user = 'Sanath',
	    @v_insert_process = 'Dummy Data',	
       @d_insert_datetime = GetDate()

SELECT * 
  FROM uo_special

INSERT INTO dbo.uo_special
           (store_id,
            special_name,
            special_description,
            price,
            duration,
            receipt_counter,
            active,
            insert_user,
            insert_process,
            insert_datetime)
     SELECT 69,
            'Donburi',
            'Rice',
            '2.90',
            '0100',
            0,
            'Y',
            @v_insert_user,
            @v_insert_process,
            @d_insert_datetime

SELECT * 
  FROM uo_special

  INSERT INTO dbo.uo_special
           (store_id,
            special_name,
            special_description,
            price,
            duration,
            receipt_counter,
            active,
            insert_user,
            insert_process,
            insert_datetime)
     SELECT 2,
            'TakoYaki',
            '$12 Fried Eggs',
            '4.50',
            '0400',
            0,
            'Y',
            @v_insert_user,
            @v_insert_process,
            @d_insert_datetime

SELECT * 
  FROM uo_special

--ROLLBACK
COMMIT
