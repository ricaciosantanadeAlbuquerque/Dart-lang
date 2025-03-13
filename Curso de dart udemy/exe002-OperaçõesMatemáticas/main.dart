/**
 * Escreva um programa que receba dois números do usuário e exiba a soma, subtração, multiplicação e divisão entre eles
 */
import 'Dart:io';

void main(List<String> args) {

  print('Digite o primeiro número');
  String? num1 = stdin.readLineSync();
  print('Digite o segundo numero');
  String? num2 = stdin.readLineSync();

  if (num1 != null && num2 != null) {
    if (num1.isNotEmpty && num2.isNotEmpty) {
      try {
        double numero1 = double.parse(num1);
        num numero2 = double.parse(num2); // num é uma super classe de double e int por tanto, ele recebe int e double.
        print('Soma: ${numero1 + numero2},\n');
        print('Subtração: ${numero1 - numero2},\n');
        print('Multiplicação: ${numero1 * numero2}\n');
        print('Divisão:  ${numero1 / numero2}\n');
      } catch (e,s) {
        print('Excecao: $e');
        print('Stack Trace $s'); // rastreamento de pilha
      }
    } else {
      print('Digite valores válidos que não sejam vazios');
    }
  } else {
    print('Digite valores válidos não nulos.');
  }

}
