INSERT INTO `dev_config_zone.process_email` (
    process_name, 
    params, 
    zone_name,
    estatus
) VALUES (
    'process-{{nombre_proceso}}',
    JSON '''
    [
        {
        "email_to_0": "{{correos_destinatarios}}",
        "email_subj_err": "Resultado Ejecución Proceso: process-{{nombre_proceso}}-raw-{{version_arquetipo_raw}} [ERROR]", 
        "email_subj_ok": "Resultado Ejecución Proceso: process-{{nombre_proceso}}-raw-{{version_arquetipo_raw}} [OK]", 
        "email_body_err": "Process : process-{{nombre_proceso}}-raw de Arquetipo: workflow-arquetipo-ingesta-raw-{{version_arquetipo_raw}} Ejecutado Con Errores!", 
        "email_body_ok": "Process : process-{{nombre_proceso}}-raw de Arquetipo: workflow-arquetipo-ingesta-raw-{{version_arquetipo_raw}} Ejecutado Ok!"
        }
    ]
    ''',
    'RAW',
    1
);
