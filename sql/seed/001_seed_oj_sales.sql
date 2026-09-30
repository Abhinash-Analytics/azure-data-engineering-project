IF NOT EXISTS
(
    SELECT 1
    FROM dbo.etl_control
    WHERE pipeline_name = 'pl_ingest_oj_sales_to_bronze'
      AND source_object = 'Microsoft OJ Sales Simulated dataset.csv'
)
BEGIN
    INSERT INTO dbo.etl_control
    (
        pipeline_name,
        source_system,
        source_object,
        watermark_column,
        watermark_value,
        last_run_status,
        is_active
    )
    VALUES
    (
        'pl_ingest_oj_sales_to_bronze',
        'ADLS',
        'Microsoft OJ Sales Simulated dataset.csv',
        'WeekofPurchase',
        '0',
        'NotStarted',
        1
    );
END;
