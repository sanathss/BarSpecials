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
 SELECT 'ChIJa5ZgN3RIDW0RvvbSKQhrQVc',
 'Pita Pit',
 -36.8653587,
 174.7765314,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJa5ZgN3RIDW0RvvbSKQhrQVc') 
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
 SELECT 'ChIJFeNIS3RIDW0REHR8fjfbN9w',
 '早春二月',
 -36.8648286,
 174.775974,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJFeNIS3RIDW0REHR8fjfbN9w') 
 UNION 
 SELECT 'ChIJLxFVP3RIDW0RvWETePGf5VA',
 'Soul Sushi Newmarket',
 -36.8651994,
 174.7769542,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJLxFVP3RIDW0RvWETePGf5VA') 
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
 SELECT 'ChIJu9UoDnRIDW0RkysmByIyyZk',
 'Tucks & Bao',
 -36.8656501,
 174.7779194,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJu9UoDnRIDW0RkysmByIyyZk') 
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
 SELECT 'ChIJ307ucXRIDW0RMz9mIWxqfXA',
 'Lkf',
 -36.8647963,
 174.7779527,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ307ucXRIDW0RMz9mIWxqfXA') 
 UNION 
 SELECT 'ChIJ59htGXZIDW0RO3P0toegBWw',
 'L''atelier du fromage',
 -36.8674078,
 174.7737743,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ59htGXZIDW0RO3P0toegBWw') 
 UNION 
 SELECT 'ChIJXYmpJHdIDW0RnWdooExJL14',
 'Aqua Cafe',
 -36.865645,
 174.77821,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJXYmpJHdIDW0RnWdooExJL14') 
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
 SELECT 'ChIJ1Qj7SXRIDW0R_dsE7ACrkF0',
 'Tokyo Sushi',
 -36.8649944,
 174.7762719,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ1Qj7SXRIDW0R_dsE7ACrkF0') 
 UNION 
 SELECT 'ChIJYQZUO3RIDW0Re6it740mIAE',
 'Chongqing Express',
 -36.8657979,
 174.776898,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJYQZUO3RIDW0Re6it740mIAE') 
 UNION 
 SELECT 'ChIJqc9vPHRIDW0RcVUNGMm9LhE',
 'Kingdom Sushi Ltd',
 -36.8657256,
 174.7770027,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJqc9vPHRIDW0RcVUNGMm9LhE') 
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
 SELECT 'ChIJmVIlPnRIDW0RdbyM26YBpao',
 '枪火串烧 Gunfire Restaurant & Bar',
 -36.8653598,
 174.777207,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJmVIlPnRIDW0RdbyM26YBpao') 
 UNION 
 SELECT 'ChIJMd7_EXZIDW0RgX73n0PD1MU',
 '蘭香閣.Lan Xiang Ge Shanghai Cuisine',
 -36.866847,
 174.7741342,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJMd7_EXZIDW0RgX73n0PD1MU') 
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
 SELECT 'ChIJ_QAiFXZIDW0RzdB7mr49CVk',
 'Ta-ke Sushi',
 -36.8675681,
 174.7745565,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ_QAiFXZIDW0RzdB7mr49CVk') 
 UNION 
 SELECT 'ChIJbc8XG3RIDW0RyJStvvZ_NDE',
 'Little Sheep',
 -36.8660306,
 174.7778445,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJbc8XG3RIDW0RyJStvvZ_NDE') 
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
 

SELECT *
  FROM dbo.uo_store st