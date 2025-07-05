INSERT INTO `dev_config_zone.process_params` (
    process_name,
    process_fn_name, 
    params, 
    arquetype_name,
    active
) VALUES (
    'process-{{nombre_proceso}}',
    'fn-move-file-on-bucket',
    JSON '''
    [
        {"path_origen": "origin-files/","path_destino": "files/{{path_destino}}/", "nombre_archivo": "{{nombre_archivo}}", "periodicidad": "{{periodicidad}}"}
    ]
    ''',
    'workflow-arquetipo-ingesta-raw-{{version_arquetipo_raw}}',
    TRUE
);