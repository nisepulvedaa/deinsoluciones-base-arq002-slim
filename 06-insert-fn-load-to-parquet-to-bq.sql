INSERT INTO `dev_config_zone.process_params` (
    process_name,
    process_fn_name, 
    params, 
    arquetype_name,
    active
) VALUES (
    'process-{{nombre_proceso}}',
    'fn-load-to-parquet-to-bq',
    JSON '''
    [
        {"input": "{{buckets_detino}}{{path_destino}}{{nombre_archivo}}","output": "{{proyecto}}.{{dataset_raw_zone}}.{{nombre_tabla_raw}}",  "periodicidad": "{{periodicidad}}"}
    ]
    ''',
    'workflow-arquetipo-ingesta-raw-{{version_arquetipo_raw}}',
    TRUE
);
