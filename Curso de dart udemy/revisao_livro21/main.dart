import 'dart:io';

/**
 * Faça um programa, utilizando while, que permita o usuário fazer contas de adição enquanto quiser.
 */
void main() {
  String resposta = 'sim';

  while (resposta == 'sim') {
    print('Digite o primeiro valor !');
    var entradaValor = stdin.readLineSync();
    print('Digite o segundo valor !');
    var entradaValor2 = stdin.readLineSync();

    if (entradaValor != null && entradaValor2 != null) {
      if (entradaValor.isNotEmpty && entradaValor2.isNotEmpty) {
        try {
          num num1 = num.parse(entradaValor);
          num num2 = num.parse(entradaValor2);

          print("Primeiro valor: $num1, Segundo valor $num2, resposta: ${num1 + num2}");
        } catch (e) {
          throw Exception('ERRO! de converção');
        }
      } else {
        print('ERRO! valor vazio');
      }
    } else {
      print('Digite um valor !!!');
    }
    print('Para continuar Digite [sim] e [nao] para não');
    resposta = stdin.readLineSync()!;
  }
}
