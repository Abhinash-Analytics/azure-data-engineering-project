IF OBJECT_ID('dbo.etl_file_history', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.etl_file_history
    (
        pipeline_name        VARCHAR(100)  NOT NULL,
        source_file_name     VARCHAR(260)  NOT NULL,
        source_path          VARCHAR(500)  NULL,

        file_modified_time   DATETIME2(3)  NOT NULL,
        processed_time       DATETIME2(3)  NULL,

        run_id               VARCHAR(100)  NULL,
        status               VARCHAR(20)   NOT NULL,

        rows_processed       BIGINT        NULL,
        error_message        VARCHAR(2000) NULL,

        CONSTRAINT PK_etl_file_history
            PRIMARY KEY
            (
                pipeline_name,
                source_file_name,
                file_modified_time
            )
    );
END;
