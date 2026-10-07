ALTER TABLE dbo.etl_file_history
ALTER COLUMN run_id VARCHAR(100) NOT NULL;

ALTER TABLE dbo.etl_file_history
ADD CONSTRAINT UQ_etl_file_history_attempt
UNIQUE
(
    pipeline_name,
    source_file_name,
    file_modified_time,
    run_id
);
