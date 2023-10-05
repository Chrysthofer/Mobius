# Diretórios
SRC_DIR = C:\Users\chrys\Desktop\helsinki\Source
OBJ_DIR = C:\Users\chrys\Desktop\helsinki\obj\Debug
BIN_DIR = C:\Users\chrys\Desktop\helsinki\bin\Debug
HEADER_DIR = C:\Users\chrys\Desktop\helsinki\Headers

clean:
	rm -f $(OBJ_DIR)/*.o

# Nome do seu executável
TARGET = $(BIN_DIR)/myccomp.exe

# Compilador
CC = gcc

# Opções de compilação
CFLAGS = -Wall -g -I$(HEADER_DIR)

# Lista de arquivos fonte por nome
SOURCE_FILES = labels.c lex.yy.c t2t.c variaveis.c c2asm.tab.c

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

