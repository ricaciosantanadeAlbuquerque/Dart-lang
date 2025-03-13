/**
 * Crie um programa que peça a idade de uma pessoa e informe se ela pode votar ou não (idade mínima de 16 anos no Brasil)
 */
import 'dart:io';

void main() {
  print(votacao());
}

String votacao() {
  var result;
  print('Digite seu nome!');
  String? nome = stdin.readLineSync();
  print('Digite sua idade!');
  String? idade = stdin.readLineSync();

  if (nome != null && idade != null) {
    if (nome.isNotEmpty && idade.isNotEmpty) {
      try {
        int idadeNumero = int.parse(idade);

        if (idadeNumero >= 16 && idadeNumero <= 17 || idadeNumero >= 70) {
          result = 'Voto opcional: idade $idadeNumero';
        } else if (idadeNumero >= 18 && idadeNumero <= 60) {
          result = 'Voto obrigatório: idade: $idadeNumero';
        } else {
          result = 'Você não tem idade para votar $idadeNumero';
        }
      } catch (e, s) {
        print('Excecao: $e');
        print('Stack Trace: $s');
      }
    } else {
      print('Digite valores válidos');
    }
  } else {
    print('Digite valores válidos.');
  }

  return result;
}
