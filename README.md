# makefile para Estrutura de Dados - "prof." Wagner Meira
Template de makefile para projetos de Estrutura de Dados com o Meira. Há duas versões de makefile:
Uma para projetos que façam uso da biblioteca `doctest.h` e outra que siga a estrutura básica de arquivos exigida.

# Utilização 
Compilador automático para trabalhos do Meira que devem seguir a seguinte estrutura de diretórios:
<pre>
 .<br>
 |--src<br>
      |--arquivo1.cpp<br>
      |--arquivo2.cpp   <br>
 |--bin<br>
      |--nomeDoProjeto<br>
 |--obj<br>
      |--arquivo1.o<br>
      |--arquivo2.o<br>
 |--include<br>
      |--arquivo1.hpp<br>
      |--arquivo2.hpp<br>
 |--test<br>
      |--testes.cpp<br>
 |--Makefile
</pre>
 
 O projeto contará apenas com os arquivos .cpp e .hpp e os diretórios,
 o resto será gerado durante o processo de compilação.

 Essa versão conta com um adendo para utilizar o framework de testes unitários
 DOCTEST.h, basta adicioná-lo à pasta "include" e criar testes dentro de um
 arquivo .cpp qualquer dentro da pasta "test". 

 # UTILIZAÇÃO:
* make all * : compila tanto testes quanto o programa
* make run: compila e executa apenas o programa
* make test * : compila e executa apenas os testes
* make clean: remove binarios e arquivos objeto

 O Makefile funciona apenas para projetos em C++, para adaptá-lo para C
 será necessário alterar as variávies CXX para um compilador como gcc ou 
 clang e substituir todas as menções a .cpp para .c, assim como .hpp para .h
 
 Caso isso for implementado, favor submeter pull request para atualizar o
 repositório. (https://github.com/Samuel-Brum/makefile-ED-meira)

 <sub>* Somente para o makefile com testes</sub>
