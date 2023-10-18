import os
import sys

# Diretório dos arquivos .o
obj_dir = os.path.join(os.path.dirname(__file__), "obj/Debug")

# Verifica se o diretório existe
if os.path.exists(obj_dir):
    # Percorre os arquivos no diretório
    for root, dirs, files in os.walk(obj_dir):
        for file in files:
            if file.endswith(".o"):
                # Cria o caminho completo para o arquivo .o
                file_path = os.path.join(root, file)
                # Exclui o arquivo .o
                os.remove(file_path)

# Passe o caminho do arquivo como argumento
file_path = sys.argv[1]

if os.path.exists(file_path):
    print(f"O arquivo {file_path} existe. Excluindo...")
    os.remove(file_path)
else:
    print(f"O arquivo {file_path} não existe.")
