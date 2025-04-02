/**
 * Crie uma função recursiva que recebe um número n e retorna a soma de 1 + 2 + ... + n.
Exemplo: soma(5) → 1 + 2 + 3 + 4 + 5 = 15
 */

import 'dart:io';

void main(List<String> args) {
  print('Digite uma valor numérico');
  String? entradaValor = stdin.readLineSync();

  if (entradaValor != null && entradaValor.isNotEmpty) {
    try {
      int numero = int.parse(entradaValor);
      int result = somaRecursiva(valor: numero);

      print('Resultado da soma recursiva. $result');
    } catch (e, s) {
      print('Excecao $e');
      print('Stack trace $s');
    }
  } else {
    print('ERRO!!! digite valores válidos.');
  }
}

int somaRecursiva({required int valor}) {
  if (valor <= 0) {
    return 0;
  }else{
     return valor + somaRecursiva(valor: valor - 1);
  }
}
