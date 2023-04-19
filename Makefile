# -----------------------------------------------------------------------------
# Arquivo make para Trabalho prático [numero] de Estrutura de dados-UFMG 2023/1
# Autor: Samuel Brum Martins
# -----------------------------------------------------------------------------
# Compilador automático para trabalhos do Meira que devem seguir a seguinte
# estrutura de diretórios:
# .
# |--src
# |   |--arquivo1.cpp
# |   |--arquivo2.cpp   
# |--bin
# |   |--nomeDoProjeto
# |--obj
# |   |--arquivo1.o
# |   |--arquivo2.o
# |--include
# |   |--arquivo1.h
# |   |--arquivo2.h
# |--Makefile
# 
# O projeto contará apenas com os arquivos .cpp e .h, o resto será gerado 
# durante o processo de compilação.
#
# O Makefile funciona apenas para projetos em C++, para adaptá-lo para C
# será necessário alterar as variávies CXX para um compilador como gcc ou 
# clang e substituir todas as menções a .cpp para .c
# 
# Caso isso for implementado, favor submeter pull request para atualizar o
# repositório.
# -----------------------------------------------------------------------------

CXX := g++
CXXFLAGS := -Wall -c -Iinclude -pg -g

HEADERS := $(wildcard include/*.h)
SOURCES := $(wildcard src/*.cpp)
OBJECTS := $(patsubst src/%.cpp, obj/%.o, $(SOURCES))

PROJECT_NAME := nomeDoProjeto
EXE := bin/$(PROJECT_NAME)

$(EXE): $(OBJECTS) $(HEADERS)
	$(CXX) -o bin/$(PROJECT_NAME) $(OBJECTS) 

obj/%.o: src/%.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) $< -o $@

run: $(EXE)
	bin/$(PROJECT_NAME)

clean:
	rm -f bin/$(PROJECT_NAME) obj/*.o
