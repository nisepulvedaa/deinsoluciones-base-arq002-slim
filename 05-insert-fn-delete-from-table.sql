INSERT INTO `dev_config_zone.process_params` (
    process_name,
    process_fn_name, 
    params, 
    arquetype_name,
    active
) VALUES (
    'process-{{nombre_proceso}}',
    'fn-delete-from-table',
    JSON '''
    [
        {"table_name": "{{nombre_tabla_raw}}" ,"dataset_name": "{{dataset_raw_zone}}","fecha_columna": "{{campo_fecha_tabla_raw}}", "fecha_param": "{{fecha_ejecucion}}", "periodicidad": "{{periodicidad}}"}
    ]
    ''',
    'workflow-arquetipo-ingesta-raw-{{version_arquetipo_raw}}',
    TRUE
);
