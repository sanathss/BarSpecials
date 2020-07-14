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
 SELECT 'ChIJ7a-eFnlIDW0RhUuBrBF6s-I',
 'The Chef Indian Restaurant & Bar',
 -36.8756317,
 174.7769031,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ7a-eFnlIDW0RhUuBrBF6s-I') 
 UNION 
 SELECT 'ChIJf9DaXBFJDW0RT65ImM8_8dU',
 '重庆火锅',
 -36.8748777,
 174.77557,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJf9DaXBFJDW0RT65ImM8_8dU') 
 UNION 
 SELECT 'ChIJi6SE9KJJDW0R5-ISZsnXtoM',
 'One8Tea',
 -36.8756382,
 174.7768752,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJi6SE9KJJDW0R5-ISZsnXtoM') 
 

SELECT *
  FROM dbo.uo_store st