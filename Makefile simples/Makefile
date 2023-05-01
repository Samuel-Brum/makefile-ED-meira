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
# |   |--arquivo1.hpp
# |   |--arquivo2.hpp
# |--Makefile
# 
# O projeto contará apenas com os arquivos .cpp e .hpp e os diretórios, o resto será gerado 
# durante o processo de compilação.
# UTILIZAÇÃO:
#   - make run: compila e executa apenas o programa
#   - make clean: remove binarios e arquivos objeto
#
# O Makefile funciona apenas para projetos em C++, para adaptá-lo para C
# será necessário alterar as variávies CXX para um compilador como gcc ou 
# clang e substituir todas as menções a .cpp para .c, assim como .hpp para .h
# 
# Caso isso for implementado, favor submeter pull request para atualizar o
# repositório. (https://github.com/Samuel-Brum/makefile-ED-meira)
# -----------------------------------------------------------------------------

CXX := g++
CXXFLAGS := -Wall -c -Iinclude -pg -g

HEADERS := $(wildcard include/*.hpp) # arquivos .hpp em include
SOURCES := $(wildcard src/*.cpp) # arquivos .cpp em src
OBJECTS := $(patsubst src/%.cpp, obj/%.o, $(SOURCES)) # lista de targets .o

PROJECT_NAME := nomeDoProjeto # nome do executavel do projeto
EXE := bin/$(PROJECT_NAME) # nome dos executavel de testes

$(EXE): $(OBJECTS) $(HEADERS) # Alvo do executavel do projeto
	$(CXX) -o bin/$(PROJECT_NAME) $(OBJECTS) 

obj/%.o: src/%.cpp $(HEADERS) # Alvos dos arquivos .o intermediários
	$(CXX) $(CXXFLAGS) $< -o $@

run: $(EXE)
	bin/$(PROJECT_NAME)

clean:
	rm -f bin/* obj/*.o
