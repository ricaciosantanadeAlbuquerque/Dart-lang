/**
 * Crie uma função recursiva que recebe um número inteiro e retorna o seu fatorial.
*  Exemplo: 5! = 5 * 4 * 3 * 2 * 1 = 120.
 */
import 'dart:io';

void main() {
  print('Digite um número por favor !!');
  String? entradaValor = stdin.readLineSync();

  if (entradaValor != null && entradaValor.isNotEmpty) {

    try {
      int numero = int.parse(entradaValor);
      print('Fatorial: ${(numero >= 26)? fatorialGrande(numero):fatorial(numero)}');
    } catch (e, s) {
      print('Exceção $e');
      print('Stack Trace $s');
    }

  } else {
    stdout.write('\nERRO! digite valores válidos');
  }
}

int fatorial(int numero) {
  if (numero <= 1) {
    return 1;
  } else {
    return numero * fatorial(numero - 1);
  }
}

BigInt fatorialGrande(int numero) {
  BigInt bigInt = BigInt.one; // valor 1

  for (int i = numero; i >= 2; i--) {
    bigInt *= BigInt.from(i);
  }

  return bigInt;
}
