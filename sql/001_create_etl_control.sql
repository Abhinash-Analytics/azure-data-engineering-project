IF OBJECT_ID('dbo.etl_control', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.etl_control
    (
        pipeline_name        VARCHAR(100)   NOT NULL,
        source_system        VARCHAR(100)   NOT NULL,
        source_object        VARCHAR(200)   NOT NULL,
        watermark_column     VARCHAR(100)   NULL,
        watermark_value      VARCHAR(100)   NULL,
        last_run_id          VARCHAR(100)   NULL,
        last_run_status      VARCHAR(20)    NULL,
        last_run_start_time  DATETIME2      NULL,
        last_success_time    DATETIME2      NULL,
        rows_processed       BIGINT         NULL,
        error_message        VARCHAR(2000)  NULL,
        is_active            BIT            NOT NULL DEFAULT 1,

        CONSTRAINT PK_etl_control
            PRIMARY KEY (pipeline_name, source_object)
    );
END;
