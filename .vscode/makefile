# Diretórios
OBJ_ROOT = ..
SRC_DIR = $(OBJ_ROOT)/Source
OBJ_DIR = $(OBJ_ROOT)/obj/Debug
BIN_DIR = $(OBJ_ROOT)/bin/Debug
HEADER_DIR = $(OBJ_ROOT)/Headers

# Arquivo lex.yy.c como pré-requisito
LEX_FILE = $(SRC_DIR)/lex.yy.c

# Nome do executável
TARGET = $(BIN_DIR)/myccomp.exe

# Compilador
CC = gcc

# Opções de compilação
CFLAGS = -Wall -g -I$(HEADER_DIR)

# Lista de arquivos fonte por nome
SOURCE_FILES = labels.c lex.yy.c t2t.c variaveis.c y.tab.c

# Gere a lista completa de arquivos fonte com base nos nomes especificados
SOURCES = $(addprefix $(SRC_DIR)/,$(SOURCE_FILES))

# Gerar nomes dos arquivos .o a partir dos arquivos fonte
OBJECTS = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SOURCES))


# Cria os diretórios de objetos e destino, se não existirem
$(shell mkdir $(OBJ_DIR) 2> nul)
$(shell mkdir $(BIN_DIR) 2> nul)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@