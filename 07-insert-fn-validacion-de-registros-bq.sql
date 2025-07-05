INSERT INTO `dev_config_zone.process_params` (
    process_name,
    process_fn_name, 
    params, 
    arquetype_name,
    active
) VALUES (
    'process-{{nombre_proceso}}',
    'fn-validacion-de-registros-bq',
    JSON '''
    [
        {"dataset_id": "{{dataset_raw_zone}}","table_id": "{{nombre_tabla_raw}}", "fecha_columna": "{{campo_fecha_tabla_raw}}", "fecha_param": "{{fecha_ejecucion}}", "periodicidad": "{{periodicidad}}"}
    ]
    ''',
    'workflow-arquetipo-ingesta-raw-{{version_arquetipo_raw}}',
    TRUE
);
