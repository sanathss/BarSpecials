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
 SELECT 'ChIJoTHtH3dIDW0R2zmHr1xH1M4',
 'Pearl Garden Restaurant',
 -36.8693025,
 174.7773529,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJoTHtH3dIDW0R2zmHr1xH1M4') 
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
 SELECT 'ChIJoTHtH3dIDW0RNtZ9Uk99tUg',
 'Koji Restaurant',
 -36.8691368,
 174.7773645,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJoTHtH3dIDW0RNtZ9Uk99tUg') 
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
 SELECT 'ChIJ7a-eFnlIDW0RVPmbaEqBxHM',
 'Nosh',
 -36.875714,
 174.776828,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ7a-eFnlIDW0RVPmbaEqBxHM') 
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
 SELECT 'ChIJcSHv2XZIDW0RR6x7b5W2QZY',
 'Winnie''s Thai Cuisine',
 -36.868765,
 174.7776214,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJcSHv2XZIDW0RR6x7b5W2QZY') 
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
 SELECT 'ChIJcdAT0HZIDW0Rv4wFD1jGyqY',
 'Winnie''s Thai',
 -36.8683917,
 174.7777884,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJcdAT0HZIDW0Rv4wFD1jGyqY') 
 UNION 
 SELECT 'ChIJRXbcz3ZIDW0ROQgrrPnN5yA',
 'Nandos',
 -36.8683864,
 174.77775,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJRXbcz3ZIDW0ROQgrrPnN5yA') 
 UNION 
 SELECT 'ChIJUe1I2XZIDW0RbA4-6oX2d1c',
 'Subway',
 -36.868311,
 174.7777886,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJUe1I2XZIDW0RbA4-6oX2d1c') 
 UNION 
 SELECT 'ChIJAfTR8XZIDW0RczsZq-XiYaI',
 'Muse Cafe',
 -36.868195,
 174.776254,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJAfTR8XZIDW0RczsZq-XiYaI') 
 UNION 
 SELECT 'ChIJAfTR8XZIDW0R7NpmwGIkw9o',
 'Golden Ducks Charcoal Roast',
 -36.8681948,
 174.7762542,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJAfTR8XZIDW0R7NpmwGIkw9o') 
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
 SELECT 'ChIJT95oNHdIDW0RHpn0rGhurPM',
 'YB Sushi',
 -36.870295,
 174.778339,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJT95oNHdIDW0RHpn0rGhurPM') 
 UNION 
 SELECT 'ChIJH_MLNHdIDW0RBr--gU4aHz4',
 'Eat mi Vietnamese street food',
 -36.8702443,
 174.778292,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJH_MLNHdIDW0RBr--gU4aHz4') 
 UNION 
 SELECT 'ChIJT95oNHdIDW0RLch2bJNwRd4',
 'No.1 Chicken',
 -36.870252,
 174.7783471,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJT95oNHdIDW0RLch2bJNwRd4') 
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
 SELECT 'ChIJS3_T53ZIDW0RTZnG49GX15Q',
 'El Nino Bar & Grill',
 -36.8685183,
 174.7770942,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJS3_T53ZIDW0RTZnG49GX15Q') 
 UNION 
 SELECT 'ChIJvyDv2XZIDW0Rvcilo_raUEE',
 'Aroma Indian Cuisine',
 -36.868502,
 174.777776,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJvyDv2XZIDW0Rvcilo_raUEE') 
 UNION 
 SELECT 'ChIJ5wzp-XZIDW0RaeiZc87Gd_s',
 'Lunch Box',
 -36.8685141,
 174.7761991,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ5wzp-XZIDW0RaeiZc87Gd_s') 
 UNION 
 SELECT 'ChIJH1D373ZIDW0RUJ9owtB_iXA',
 'The Bite',
 -36.8684575,
 174.7766382,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJH1D373ZIDW0RUJ9owtB_iXA') 
 UNION 
 SELECT 'ChIJgVMOxXZIDW0RVUqNd5v1vd8',
 'Fuku Sushi',
 -36.8683917,
 174.7777884,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJgVMOxXZIDW0RVUqNd5v1vd8') 
 UNION 
 SELECT 'ChIJ5R67xXZIDW0RNQ2uY2x8DZc',
 'JJ''s Espresso',
 -36.868311,
 174.7777886,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ5R67xXZIDW0RNQ2uY2x8DZc') 
 UNION 
 SELECT 'ChIJvXTh3X5IDW0RDFTDF9WjLEs',
 'Fuku Sushi',
 -36.8784517,
 174.77628,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJvXTh3X5IDW0RDFTDF9WjLEs') 
 UNION 
 SELECT 'ChIJS8ubxnZIDW0RPuiP2LGThnQ',
 'ร้านอาหารไทย',
 -36.868155,
 174.7776797,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJS8ubxnZIDW0RPuiP2LGThnQ') 
 UNION 
 SELECT 'ChIJjSgXiGFJDW0RnPQ0Fm4s6aE',
 '心思港式茶餐廳',
 -36.8681566,
 174.7764527,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJjSgXiGFJDW0RnPQ0Fm4s6aE') 
 UNION 
 SELECT 'ChIJ0z6g9nZIDW0RAWY7y0PXs4Q',
 'Laksa House',
 -36.8681235,
 174.7761731,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ0z6g9nZIDW0RAWY7y0PXs4Q') 
 UNION 
 SELECT 'ChIJD3ss7HZIDW0R2EvJh7XiWww',
 'Emporium Cafe & Restaurant Limited',
 -36.868043,
 174.776516,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJD3ss7HZIDW0R2EvJh7XiWww') 
 

SELECT *
  FROM dbo.uo_store st