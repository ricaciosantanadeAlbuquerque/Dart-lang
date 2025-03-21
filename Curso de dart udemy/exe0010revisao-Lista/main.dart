/**
 * 1. Manipulação de Listas
Crie uma lista de inteiros com 10 elementos.

Adicione mais dois números.
Remova o primeiro número.
Imprima a lista ordenada de forma crescente e decrescente.
 */

void main() => lista();

void lista() {
  final List<int> listaNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  listaNumeros.add(20);
  listaNumeros.add(45);
  print('O valor ${listaNumeros.removeAt(0)} foi removido');
}
