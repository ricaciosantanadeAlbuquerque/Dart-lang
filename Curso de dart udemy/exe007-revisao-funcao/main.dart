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
}

String saudacao({String nome = 'Indefinido'}) {
  return 'Seja Bem vindo $nome';
}
