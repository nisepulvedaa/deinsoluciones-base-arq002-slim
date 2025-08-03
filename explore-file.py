import pandas as pd
import pyarrow.parquet as pq

# 📌 Ruta del archivo Parquet
parquet_path = "instrumentos-derivados.parquet"

# 📥 Leer archivo
df = pd.read_parquet(parquet_path)

# 🔍 Configurar pandas para mostrar todo sin truncar
pd.set_option('display.max_colwidth', None)  # sin límite de ancho
pd.set_option('display.max_columns', None)   # mostrar todas las columnas
pd.set_option('display.expand_frame_repr', False)  # evita corte en filas largas

# 🖨️ Mostrar primeras 5 filas
print("\n🔎 Primeros 5 registros:")
print(df.head(5))
print(len(df))

# 📥 Leer el archivo Parquet y extraer esquema
print("📊 Esquema del Parquet:")
table = pq.read_table(parquet_path)
schema = table.schema


# 🧠 Imprimir esquema nativo
print("📜 Esquema desde el archivo Parquet (pyarrow):")
print(schema)
