INSERT INTO dbo.uo_store
(store_identifier,
store_name,
store_lat,
store_long,
suburb_id,
username,
user_password,
insert_user,
insert_process,
insert_datetime)
 SELECT 'ChIJix2A5HlIDW0R1F2_mYh7eUI',
 'Hansan',
 -36.8722624,
 174.7777673,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJix2A5HlIDW0R1F2_mYh7eUI') 
 UNION 
 SELECT 'ChIJsQj9WndIDW0RIbK3AS7Fw20',
 'Tasca',
 -36.871044,
 174.777839,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJsQj9WndIDW0RIbK3AS7Fw20') 
 UNION 
 SELECT 'ChIJzWJc53lIDW0RWsvr-ZiGBMc',
 'The Claddagh Irish Pub',
 -36.8722186,
 174.7771953,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJzWJc53lIDW0RWsvr-ZiGBMc') 
 UNION 
 SELECT 'ChIJwTf-RXdIDW0RaLpH_h8j5TM',
 'Nuffield St Cafe, Bar and Bistro',
 -36.870906,
 174.778,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJwTf-RXdIDW0RaLpH_h8j5TM') 
 UNION 
 SELECT 'ChIJYfo5n3lIDW0RZKTEAdQC0B4',
 'Subway',
 -36.8742518,
 174.7773475,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJYfo5n3lIDW0RZKTEAdQC0B4') 
 UNION 
 SELECT 'ChIJ8RxM4nlIDW0Riw2nAluioWE',
 'Faro Korean Restaurant',
 -36.872023,
 174.777679,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ8RxM4nlIDW0Riw2nAluioWE') 
 UNION 
 SELECT 'ChIJbdJOUHdIDW0RnD3vbiJyeL0',
 'Whoopi Cakes & Ice Cream',
 -36.8710479,
 174.7781717,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJbdJOUHdIDW0RnD3vbiJyeL0') 
 UNION 
 SELECT 'ChIJJTVhpnBIDW0RKnfvKtdm0YM',
 'Master Dumpling',
 -36.8716815,
 174.7793477,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJJTVhpnBIDW0RKnfvKtdm0YM') 
 UNION 
 SELECT 'ChIJYUDwWXdIDW0RAXn48PCWg78',
 '越南河粉Nenmarket',
 -36.8715837,
 174.7778534,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJYUDwWXdIDW0RAXn48PCWg78') 
 

SELECT *
  FROM dbo.uo_store st