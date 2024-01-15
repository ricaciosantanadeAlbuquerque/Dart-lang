import 'dart:io';

/**
 * Faça um programa que recebe  um valor numérico entre 0 e 10, caso o valor seja válido, digite a palavra (valor válido com o valor em seguida).
 * Se não for válido, mostre a palavra (valor inválido com o valor do lado).
 * 
 */
void main() {
  print('Digite um valor numeérico entrede 0 e 10 ');

  String? entradaValor = stdin.readLineSync();

  if (entradaValor != null) {
    if (entradaValor.isNotEmpty) {
      try {
        num valor = num.parse(entradaValor);

        if (valor >= 0 && valor <= 10) {
          print('Valor válido: $valor');
        } else {
          print('Valor inválido: $valor');
        }

      } catch (e) {
        throw Exception('ERRO!!! $entradaValor não é um valor numérico');
      }

    } else {
      print('ERRO!!! Digite um valor válido');
    }
  } else {
    print("ERRO!!! Valores nulos são inválidos.");
  }
}
