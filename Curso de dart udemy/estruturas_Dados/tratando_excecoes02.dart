import 'dart:io';

/*🔟 Manipulação de Exceções em Operações Matemáticas

Crie um programa que peça dois números ao usuário e tente dividir um pelo outro.
Trate a exceção caso o divisor seja zero.
Se ocorrer um erro inesperado, exiba a mensagem: "Erro desconhecido! Tente novamente."

*/

class NumeroNegativoException implements Exception {
  final String mensagem1;
  final String mensagem2;

  NumeroNegativoException(
      [this.mensagem1 = 'Valor Negativo', this.mensagem2 = 'Valor Negativo']);

  @override
  String toString() => 'Valor Negativo: $mensagem1, $mensagem2';
}

void main(List<String> args) {
  print('Digite o primeiro valor');
  String? valor1 = stdin.readLineSync();
  print('Digite o segundo valor');
  String? valor2 = stdin.readLineSync();

  if (valor1 != null && valor2 != null) {
    if (valor1.isNotEmpty && valor2.isNotEmpty) {
      try {
        int numero1 = int.parse(valor1);
        int numero2 = int.parse(valor2);

        if (numero1.isNegative || numero2.isNegative) {
          throw NumeroNegativoException(valor1, valor2);
        }

        int result = numero1 ~/ numero2;

        print('O resultado da divisão é $result\n');
      } on FormatException {
        print('ERRO ! o valor $valor1 e $valor2 não são va lores numéricos');
      } on NumeroNegativoException catch (e) {
        print('ERRO !  $e');
      } on UnsupportedError {
        print('Não é possível divisão por zero');
      } catch (e, s) {
        print('ERRO inesperado. $e');
        print('Stack Trace: $s');
      }
    } else {
      print('ERRO ! Digite valores válidos\n');
    }
  } else {
    print('ERRO ! Digite valores válidos\n');
  }
}
