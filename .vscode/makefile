# Variáveis
CC = gcc
CFLAGS = -Wall -g
EXECUTABLE = myccomp

# Lista de arquivos fonte
SOURCES = labels.c lex.yy.c t2t.c variaveis.c y.tab.c

# Lista de arquivos objeto
OBJECTS = $(SOURCES:.c=.o)

# Regras
all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
    $(CC) $(CFLAGS) -o $@ $(OBJECTS)

%.o: %.c
    $(CC) $(CFLAGS) -c $< -o $@

clean:
    rm -f $(EXECUTABLE) $(OBJECTS)
