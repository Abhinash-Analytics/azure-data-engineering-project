ALTER TABLE dbo.etl_file_history
DROP CONSTRAINT PK_etl_file_history;

ALTER TABLE dbo.etl_file_history
ADD attempt_id BIGINT IDENTITY(1,1) NOT NULL;

ALTER TABLE dbo.etl_file_history
ADD CONSTRAINT PK_etl_file_history
PRIMARY KEY (attempt_id);
