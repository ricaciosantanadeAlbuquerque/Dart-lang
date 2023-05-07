/**
 *  - Faça um programa que leia três valores inteiros A, B e C e diga se a soma de A + B é menor que C.
 */
import 'dart:io';

void main() {
  print("Digite um valor para A ");
  String? aEntrada = stdin.readLineSync();
  print("Digite um valor para B ");
  String? bEntrada = stdin.readLineSync();
  print("Digite um valor para C ");
  String? cEntrada = stdin.readLineSync();

  if (aEntrada != null && bEntrada != null && cEntrada != null) {
    if (aEntrada.isNotEmpty == true && bEntrada.isNotEmpty == true && cEntrada.isNotEmpty) {
      try {
        num a = num.parse(aEntrada);
        num b = num.parse(bEntrada);
        num c = num.parse(cEntrada);

        num soma = a + b;

        if (soma < c) {
          print(" A soma de A + B é menor do que C ");
        } else {
          print(" A  soma de A + B é maior do que C ");
        }
      } catch (e) {
        throw Exception('ERRO! $aEntrada ou $bEntrada ou $cEntrada não são valores númericos ');
      }
    } else {
      print("Digite valores válidos !");
    }
  } else {
    print("Digite valores válidos !");
  }
}
