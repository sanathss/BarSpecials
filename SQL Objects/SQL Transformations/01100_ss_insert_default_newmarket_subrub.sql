SELECT *
  FROM uo_suburb 

INSERT INTO dbo.uo_suburb
           (suburb_name,
            city_name,
            active,
            insert_datetime,
            insert_user,
            insert_process)
     SELECT 'Newmarket',
            'Auckland',
            'Y',
            GetDate(),
            HOST_NAME(),
            'Default'
      WHERE NOT EXISTS (SELECT 1 
                          FROM dbo.uo_suburb 
                         WHERE suburb_name = 'Newmarket'
                           AND city_name = 'Auckland')
                        
SELECT * 
  FROM dbo.uo_suburb