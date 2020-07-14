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
 SELECT 'ChIJv6C2jHZIDW0RQ9Gm5E28_o8',
 'Sun World Chinese Restaurant',
 -36.867557,
 174.776456,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJv6C2jHZIDW0RQ9Gm5E28_o8') 
 UNION 
 SELECT 'ChIJhbquo3ZIDW0RpQyZqBJLAsU',
 'Archie''s Restaurant & Pizzeria',
 -36.8668909,
 174.7775429,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJhbquo3ZIDW0RpQyZqBJLAsU') 
 UNION 
 SELECT 'ChIJz0fuj3ZIDW0RTVTfybXVW_4',
 'Doolan Brothers Newmarket',
 -36.8672385,
 174.7766199,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJz0fuj3ZIDW0RTVTfybXVW_4') 
 UNION 
 SELECT 'ChIJ2ypOfXZIDW0RoMMkxnmnH8Q',
 'Hua''s Restaurant',
 -36.8671288,
 174.7761827,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ2ypOfXZIDW0RoMMkxnmnH8Q') 
 UNION 
 SELECT 'ChIJNxHekHZIDW0Rj--gFLhlrdM',
 'New Market Chinese Kitchen',
 -36.8672047,
 174.776772,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJNxHekHZIDW0Rj--gFLhlrdM') 
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
 SELECT 'ChIJI6Xjk3ZIDW0RBiP7yQ3V2dM',
 'Nite Spice',
 -36.8675437,
 174.7768045,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJI6Xjk3ZIDW0RBiP7yQ3V2dM') 
 UNION 
 SELECT 'ChIJI67ml3ZIDW0RzYuZ-afJhRw',
 'Canton Grill Seafood Restaurant',
 -36.8672259,
 174.7772254,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJI67ml3ZIDW0RzYuZ-afJhRw') 
 UNION 
 SELECT 'ChIJpZvBk3ZIDW0R-3rt809FvP0',
 'Delight Spice Indian Cuisine',
 -36.8675362,
 174.7768472,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJpZvBk3ZIDW0R-3rt809FvP0') 
 UNION 
 SELECT 'ChIJU9mLkHZIDW0R9iezEtLHXq0',
 'Red Fire BBQ Restaurant 红火烤肉',
 -36.867238,
 174.776771,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJU9mLkHZIDW0R9iezEtLHXq0') 
 UNION 
 SELECT 'ChIJEzx5vHZIDW0Ro2dXsKGRi5M',
 'The Lumsden Free House',
 -36.867368,
 174.77756,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJEzx5vHZIDW0Ro2dXsKGRi5M') 
 UNION 
 SELECT 'ChIJa-invHZIDW0R0tFhNB75P6o',
 'bien',
 -36.8672204,
 174.7775689,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJa-invHZIDW0R0tFhNB75P6o') 
 UNION 
 SELECT 'ChIJhbquo3ZIDW0RTavbQYgC5Wc',
 'Tao Restaurant',
 -36.866981,
 174.777433,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJhbquo3ZIDW0RTavbQYgC5Wc') 
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
 SELECT 'ChIJv2yYoXZIDW0RTWLhsNjUr6w',
 'MoMoTea Newmarket',
 -36.8666956,
 174.7774346,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJv2yYoXZIDW0RTWLhsNjUr6w') 
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
 SELECT 'ChIJd6YZn3ZIDW0Rzj4N6Qmec54',
 'HEIZO Tepenyaki Japanese Restaurant',
 -36.8666397,
 174.7772785,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJd6YZn3ZIDW0Rzj4N6Qmec54') 
 UNION 
 SELECT 'ChIJIziQg3ZIDW0RbWwHLRLS6c8',
 'Palazzo Italia NZ',
 -36.8667415,
 174.7763835,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJIziQg3ZIDW0RbWwHLRLS6c8') 
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
 SELECT 'ChIJIX00lHZIDW0R43ylmJTtgE8',
 'Sunrise Hong Kong Cafe',
 -36.8675462,
 174.7771302,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJIX00lHZIDW0R43ylmJTtgE8') 
 UNION 
 SELECT 'ChIJ-VL1e3RJDW0Rh3d-K0iOrBQ',
 'Bun Hut',
 -36.8672598,
 174.777078,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ-VL1e3RJDW0Rh3d-K0iOrBQ') 
 UNION 
 SELECT 'ChIJs8rll3ZIDW0Rk3vAivwHeto',
 'Canton Grill Sea Food Restaurant',
 -36.867218,
 174.7772168,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJs8rll3ZIDW0Rk3vAivwHeto') 
 UNION 
 SELECT 'ChIJHc6jlXZIDW0RoM5dQOwA8P0',
 'Ichiban',
 -36.8675287,
 174.7771908,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJHc6jlXZIDW0RoM5dQOwA8P0') 
 UNION 
 SELECT 'ChIJk8oYlHZIDW0R-U9XTU0mnRE',
 'TianFu Noodles',
 -36.8675073,
 174.7769974,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJk8oYlHZIDW0R-U9XTU0mnRE') 
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
 UNION 
 SELECT 'ChIJdV-rlnZIDW0R5y-HPCT8E0A',
 'Kabo Rae Restaurant',
 -36.8675353,
 174.7769149,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJdV-rlnZIDW0R5y-HPCT8E0A') 
 UNION 
 SELECT 'ChIJg0v2k3ZIDW0RlxBn_9edFdc',
 'Sakana Japanese Restaurant',
 -36.8675353,
 174.7769149,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJg0v2k3ZIDW0RlxBn_9edFdc') 
 UNION 
 SELECT 'ChIJhYnlk3ZIDW0RA5EDL9izVtE',
 'PENPEN Xian',
 -36.8675215,
 174.7768665,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJhYnlk3ZIDW0RA5EDL9izVtE') 
 UNION 
 SELECT 'ChIJhfaau3ZIDW0RvPQADH4rneY',
 'Happys Cafe',
 -36.8674088,
 174.7774825,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJhfaau3ZIDW0RvPQADH4rneY') 
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
 SELECT 'ChIJPQGPpXZIDW0RhBhgLQ87J4s',
 'The Flying Burrito Brothers',
 -36.867041,
 174.777565,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJPQGPpXZIDW0RhBhgLQ87J4s') 
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
 SELECT 'ChIJ_3cokXZIDW0R43rbc65qQEI',
 'Taiwan Restaurant',
 -36.8667283,
 174.7769344,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ_3cokXZIDW0R43rbc65qQEI') 
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
 SELECT 'ChIJkzu9n3ZIDW0RHrgsW4vvZho',
 'Tombo Buffet',
 -36.866609,
 174.7771591,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJkzu9n3ZIDW0RHrgsW4vvZho') 
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
 SELECT 'ChIJEwBwIHRIDW0RNq4hHY_DX2U',
 'Moksha',
 -36.8664438,
 174.7771253,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJEwBwIHRIDW0RNq4hHY_DX2U') 
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
 SELECT 'ChIJ5aewdIFLDW0RXaGP-2a5AC8',
 '王家味',
 -36.8677479,
 174.7759731,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ5aewdIFLDW0RXaGP-2a5AC8') 
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
 SELECT 'ChIJKZasJ3RIDW0RZKux-zXJEzU',
 'Yummy Buffet Hot Pot',
 -36.8663059,
 174.7767344,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJKZasJ3RIDW0RZKux-zXJEzU') 
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
 SELECT 'ChIJUy4jrXZIDW0R0CU6rqkvVjY',
 'GONG CHA Newmarket 貢茶',
 -36.867086,
 174.778584,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJUy4jrXZIDW0R0CU6rqkvVjY') 
 UNION 
 SELECT 'ChIJZyA4fHZIDW0RreazDJmPXn8',
 'Wan Fu Yuan Restaurant Newmarket 万福源哈尔滨饭店',
 -36.866838,
 174.7757383,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJZyA4fHZIDW0RreazDJmPXn8') 
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
 

SELECT *
  FROM dbo.uo_store st