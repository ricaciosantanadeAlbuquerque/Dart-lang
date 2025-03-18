/**
 * Crie uma função chamada saudacao que receba um nome como
 * parâmetro e retorne uma mensagem de boas-vindas.
 */
import 'dart:io';

void main() {
  print('Digite seu nome !!');
  String? nomeEntrada = stdin.readLineSync();

  if (nomeEntrada != null) {
    if (nomeEntrada.isNotEmpty) {
      print(saudacao(nome: nomeEntrada));
    }
  }

  print(maior(num1: 3, num2: 30));
}

String saudacao({String nome = 'Indefinido'}) {
  return 'Seja Bem vindo $nome';
}

int maior({int num1 = 0, int num2 = 0}) {
  var result;
  if (num1 > num2) {
    result = num1;
  } else if (num2 > num1) {
    result = num2;
  } else if (num1 == num2) {
    print('Os valores são iguais $num1 e $num2');
    result = num1;
  }

  return result;
}
