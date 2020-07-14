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
 SELECT 'ChIJ_bmtW3dIDW0ROoe81UN8OXc',
 'Cali',
 -36.870772,
 174.778097,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ_bmtW3dIDW0ROoe81UN8OXc') 
 UNION 
 SELECT 'ChIJ237MSXdIDW0R6jho5zFUq9M',
 'Otto Woo Noodle Bar',
 -36.87052,
 174.778129,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ237MSXdIDW0R6jho5zFUq9M') 
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
 SELECT 'ChIJA3pMOXdIDW0R4hpUbDMhITc',
 'The Broadway Diner',
 -36.870255,
 174.7775727,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJA3pMOXdIDW0R4hpUbDMhITc') 
 UNION 
 SELECT 'ChIJjQVItndIDW0Rb3nFl7zSAWA',
 '四季锅',
 -36.8695254,
 174.7747215,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJjQVItndIDW0Rb3nFl7zSAWA') 
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
 SELECT 'ChIJ17YTMHdIDW0RFNFXgosEGAE',
 'Bruce Lee Sushi and Roll',
 -36.8699444,
 174.7779527,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ17YTMHdIDW0RFNFXgosEGAE') 
 UNION 
 SELECT 'ChIJFzJkJHdIDW0RtJLpYdnIf5Q',
 'Not Just Kebabs',
 -36.869663,
 174.777632,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJFzJkJHdIDW0RtJLpYdnIf5Q') 
 UNION 
 SELECT 'ChIJK9TX_nZIDW0R16JuXk1zDyI',
 '&Sushi Newmarket',
 -36.8688208,
 174.7761063,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJK9TX_nZIDW0R16JuXk1zDyI') 
 UNION 
 SELECT 'ChIJr51ka3dIDW0RKQe6ocvR5IE',
 'Kebabs On Queen',
 -36.8699509,
 174.7779866,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJr51ka3dIDW0RKQe6ocvR5IE') 
 UNION 
 SELECT 'ChIJjQVItndIDW0Rxndfv9AsAVk',
 'Four Seasons Hot Pot 四季锅',
 -36.8695254,
 174.7747215,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJjQVItndIDW0Rxndfv9AsAVk') 
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
 UNION 
 SELECT 'ChIJrcSti-pJDW0Rm-aImAVeVQU',
 'Poke Poke Newmarket',
 -36.8703329,
 174.7778884,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJrcSti-pJDW0Rm-aImAVeVQU') 
 UNION 
 SELECT 'ChIJXYmpJHdIDW0RZuToRQcYFt0',
 'Go Su Sushi',
 -36.8698367,
 174.7775801,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJXYmpJHdIDW0RZuToRQcYFt0') 
 

SELECT *
  FROM dbo.uo_store st