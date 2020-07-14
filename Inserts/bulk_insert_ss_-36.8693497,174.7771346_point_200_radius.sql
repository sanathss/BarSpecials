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
 SELECT 'ChIJU2VqvnZIDW0Rgbl-LzXLoko',
 'Selera',
 -36.8676629,
 174.7772684,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJU2VqvnZIDW0Rgbl-LzXLoko') 
 UNION 
 SELECT 'ChIJQaFQ7XZIDW0RBcOzelcX38I',
 'Best Ugly Bagels',
 -36.8678455,
 174.7766194,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJQaFQ7XZIDW0RBcOzelcX38I') 
 UNION 
 SELECT 'ChIJEbTrjHZIDW0RTpQaUI71xdU',
 '新世界海鮮酒家',
 -36.867698,
 174.7763645,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJEbTrjHZIDW0RTpQaUI71xdU') 
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
 UNION 
 SELECT 'ChIJCXC_8nZIDW0RHa_-ciWqTGg',
 'Burger Burger Newmarket',
 -36.867962,
 174.776694,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJCXC_8nZIDW0RHa_-ciWqTGg') 
 UNION 
 SELECT 'ChIJVb7B6nZIDW0R9gk9WIvMeWQ',
 'The Candy Shop',
 -36.8679117,
 174.776947,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJVb7B6nZIDW0R9gk9WIvMeWQ') 
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
 SELECT 'ChIJ2bBllHZIDW0RoYEDT5q8OIg',
 'Chongqing Cafe',
 -36.8676191,
 174.7769758,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ2bBllHZIDW0RoYEDT5q8OIg') 
 UNION 
 SELECT 'ChIJpzrivXZIDW0RDCu9rrrVmmw',
 '66 Restaurant',
 -36.8675635,
 174.7772831,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJpzrivXZIDW0RDCu9rrrVmmw') 
 

SELECT *
  FROM dbo.uo_store st