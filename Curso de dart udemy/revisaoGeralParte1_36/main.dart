//Faça um programa que leia um vetor de 10 posições e verifique se existem valores iguais e os escreva na tela.

import 'dart:math';

void main() {
  List<int> numero = [];

  final lista = preencher(numero);
  final lista2 = buscarValorRepetidos(lista);
  print(lista2);
}

List<int> preencher(List<int> lista) {
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    lista.add(random.nextInt(20 + 1));
  }

  return lista;
}

List<int> buscarValorRepetidos(List<int> lista) {
  List<int> repetidos = [];

  for (var i = 0; i < lista.length - 1; i++) {
    for (var j = i + 1; j < lista.length; j++) {
      if (lista[i] == lista[j]) {
        repetidos.add(lista[i]);
      }
    }
  }
  print(lista);
  return repetidos;
}
