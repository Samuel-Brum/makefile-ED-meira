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
