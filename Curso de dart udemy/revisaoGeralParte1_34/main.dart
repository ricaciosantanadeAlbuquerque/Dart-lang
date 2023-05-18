/** Escreva um programa que leia 10 números inteiros e os armazene em um vetor. Exiba os elementos do vetor 
e, em seguida mostre qual é o maior elemento e a posição que ele se encontra dentro do vetor. */
import 'dart:io';

void main() {
  List<int> numero = [];

  for (var i = 0; i < 10; i++) {
    print("Digite um número !");
    String? entradaValor = stdin.readLineSync();

    if (entradaValor != null) {
      if (entradaValor.isNotEmpty == true) {
        try {
          int valor = int.parse(entradaValor);
          numero.add(valor);
        } catch (e) {
          throw Exception('ERRO! o valor $entradaValor não é um valor numwrico !');
        }
      } else {
        print("ERRO! valor vazio !");
      }
    } else {
      print("ERRO! o valor digitado é nulo ");
    }
  }
  print(numero);
}
