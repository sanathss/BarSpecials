-- The following applies if you want to create a table from scratch
IF NOT EXISTS(SELECT *
                FROM sys.objects
               WHERE TYPE = 'U'
                 AND NAME = 'uo_suburb')
BEGIN
   -- Define your columns in your table
   CREATE TABLE dbo.uo_suburb
   (      suburb_id           NUMERIC(18)  IDENTITY PRIMARY KEY CLUSTERED,
          suburb_name         VARCHAR(30)  COLLATE DATABASE_DEFAULT NOT NULL,
          city_name           VARCHAR(30)  COLLATE DATABASE_DEFAULT NOT NULL,
          active              VARCHAR(1)   COLLATE DATABASE_DEFAULT NOT NULL,
          insert_datetime     DATETIME     NOT NULL,
          insert_user         VARCHAR(20)  COLLATE DATABASE_DEFAULT NOT NULL,
          insert_process      VARCHAR(20)  COLLATE DATABASE_DEFAULT NOT NULL,
          update_datetime     DATETIME     NULL,
          update_user         VARCHAR(20)  COLLATE DATABASE_DEFAULT NULL,
          update_process      VARCHAR(20)  COLLATE DATABASE_DEFAULT NULL)
   ON [DEFAULT]

--   GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.uo_suburb TO [standard]
END