INSERT INTO `dev_config_zone.process_ddl` (
    process_name, 
    table_type, 
    ddl_statement, 
    is_active
) VALUES (
    'process-{{nombre_proceso}}',
    'raw',
    '{{ddl_raw}}',
    TRUE
);