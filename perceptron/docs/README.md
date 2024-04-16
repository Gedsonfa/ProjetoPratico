# Coverção

Ultilizando o GCC segue o processo de de compilação e execução:

1. Compile o arquivo fonte 'test.c' em um arquivo assembly. A opção '-S' instrui o GCC a parar após a fase de compilação, sem gerar código objeto.

```
gcc -S arquivo.c -o arquivo.s
```

2. Gere o [arquivo de código objeto](definicoes/arqCodObj.md)

```
gcc -c arquivo.s -o arquivo.o
```

A opção '-c' indica ao GCC para compilar o código assembly em um arquivo de objeto, mas não vincular(link).

3. Vincule o arquivo de objeto 'arquivo.o' para criar um executável final 'exe'

```
gcc arquivo.o -o exe
```

Esta etapa pode envolver a adição de código de bibliotecas e a realização de ajustes necessários para produzir um programa que possa ser executado diretamente pelo sistema operacional.

4. Dê as permissões ao arquivo 'exe' para troná-lo executável

```
chmod +x exe
```

O '+x' adiciona permissões de execução para o arquivo, permitindo ao usuário rodar o programa.

5. Execute o programa

```
./exe
```