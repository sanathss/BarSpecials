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
 SELECT 'ChIJOcrG8HNIDW0RK51LgXkOWJ4',
 'Subway',
 -36.8656686,
 174.7790099,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJOcrG8HNIDW0RK51LgXkOWJ4') 
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
 SELECT 'ChIJPboN_nNIDW0R-o_AyAXCLR0',
 'Burger King',
 -36.866607,
 174.778706,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJPboN_nNIDW0R-o_AyAXCLR0') 
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
 SELECT 'ChIJpdg1knNIDW0Rn_lR5QZqMX4',
 'The Bean Cafe',
 -36.8650958,
 174.7792257,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJpdg1knNIDW0Rn_lR5QZqMX4') 
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
 SELECT 'ChIJaw3Z-XNIDW0R3we3vvK5TmE',
 'Sapna',
 -36.8659022,
 174.7787687,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJaw3Z-XNIDW0R3we3vvK5TmE') 
 UNION 
 SELECT 'ChIJOcrG8HNIDW0RcKR8kUuZHtg',
 'Eden Kebab',
 -36.8658466,
 174.7790254,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJOcrG8HNIDW0RcKR8kUuZHtg') 
 UNION 
 SELECT 'ChIJ1dLt7XNIDW0RF2PX5ewKsIY',
 '禅e私房菜（Zen E Private Kitchen）',
 -36.865508,
 174.779256,
 4,
 'username',
 'password',
 HOST_NAME(),
 'AddStores',
 GETDATE()
 WHERE NOT EXISTS(SELECT 1 FROM dbo.uo_store st WHERE st.store_identifier = 'ChIJ1dLt7XNIDW0RF2PX5ewKsIY') 
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
 

SELECT *
  FROM dbo.uo_store st