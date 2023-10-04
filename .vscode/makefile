# Diretórios
SRC_DIR = Source
OBJ_DIR = obj\Debug
BIN_DIR = bin\Debug
HEADER_DIR = Headers

clean:
	rm -f $(OBJECTS)

# Nome do seu executável
TARGET = $(BIN_DIR)/myccomp.exe

# Compilador
CC = gcc

# Opções de compilação
CFLAGS = -Wall -g -I$(HEADER_DIR)

# Lista de arquivos fonte por nome
SOURCE_FILES = labels.c lex.yy.c t2t.c teste.c variaveis.c y.tab.c c2asm.tab.c

# Gere a lista completa de arquivos fonte com base nos nomes especificados
SOURCES = $(addprefix $(SRC_DIR)/,$(SOURCE_FILES))

# Gerar nomes dos arquivos .o a partir dos arquivos fonte
OBJECTS = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SOURCES))

# Cria os diretórios de objetos e destino, se não existirem
$(shell mkdir $(OBJ_DIR) $(BIN_DIR))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

