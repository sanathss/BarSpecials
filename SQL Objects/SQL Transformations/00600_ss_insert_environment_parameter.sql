DECLARE @v_user                 VARCHAR(10),
        @v_process              VARCHAR(10),
        @d_datetime             DATETIME

SELECT @v_user = 'DEVICE_REG',
       @v_process = HOST_NAME(),
       @d_datetime = GETDATE()

INSERT INTO so_system_parameters
            (param_code,
            param_name,
            parameter,
            insert_datetime,
            insert_process,
            insert_user)
     SELECT 'ENVIRON',
            'DatabaseName',
            @@SERVERNAME,
            @d_datetime,
            @v_process,
            @v_user