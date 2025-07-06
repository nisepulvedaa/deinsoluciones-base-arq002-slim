curl -X POST https://us-east4-deinsoluciones-serverless.cloudfunctions.net/fn-insert-data \
  -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  -d '{
  "process_name": "process-instrumentos-derivados-slim-nico",
  "process_fn_name": "fn-insert-data",
  "arquetype_name": "workflow-arquetipo-ingesta-raw-slim"
}'

curl -X POST https://us-east4-deinsoluciones-serverless.cloudfunctions.net/fn-move-file-on-bucket \
  -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  -d '{
  "process_name": "process-instrumentos-derivados-slim-nico",
  "process_fn_name": "fn-move-file-on-bucket",
  "arquetype_name": "workflow-arquetipo-ingesta-raw-slim"
}'



curl -X POST https://us-east4-deinsoluciones-serverless.cloudfunctions.net/fn-validacion-de-archivo-gcs \
  -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  -d '{
  "process_name": "process-instrumentos-derivados-slim-nico",
  "process_fn_name": "fn-validacion-de-archivo-gcs",
  "arquetype_name": "workflow-arquetipo-ingesta-raw-slim"
}'

curl -X POST https://us-east4-deinsoluciones-serverless.cloudfunctions.net/fn-create-table \
  -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  -d '{
  "process_name": "process-instrumentos-derivados-slim-nico",
  "table_type": "raw"
}'


curl -X POST https://us-east4-deinsoluciones-serverless.cloudfunctions.net/fn-delete-from-table \
  -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  -d '{
  "process_name": "process-instrumentos-derivados-slim-nico",
  "process_fn_name": "fn-delete-from-table",
  "arquetype_name": "workflow-arquetipo-ingesta-raw-slim"
}'


curl -X POST https://us-east4-deinsoluciones-serverless.cloudfunctions.net/fn-load-parquet-to-bq \
  -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  -d '{
  "process_name": "process-instrumentos-derivados-slim-nico",
  "process_fn_name": "fn-load-to-parquet-to-bq",
  "arquetype_name": "workflow-arquetipo-ingesta-raw-slim"
}'


curl -X POST https://us-east4-deinsoluciones-serverless.cloudfunctions.net/fn-validacion-de-registros-bq \
  -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  -d '{
  "process_name": "process-instrumentos-derivados-slim-nico",
  "process_fn_name": "fn-validacion-de-registros-bq",
  "zone_name": "RAW",
  "arquetype_name": "workflow-arquetipo-ingesta-raw-slim"
}'