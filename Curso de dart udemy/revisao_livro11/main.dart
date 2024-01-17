import 'dart:io';

void main() {
  print('Digite A para somar');
  print('Digte B  para subtrair');
  print('Digite C para multiplicar');
  print('Digite D para dividir');
  String? op = stdin.readLineSync(); // assignação ?? (se o que estiver a minha esquerda for nulo ! então faça o que está a direita)

  switch (op!.toUpperCase()) {
    case 'A':
      print("Digite o primeiro valor");
      num num1 = num.parse(stdin.readLineSync()!);
      print('Digite o segundo valor');
      num num2 = num.parse(stdin.readLineSync()!);

      num resposta = num1 + num2;

      print('Soma: ${resposta}');

      break;
    case 'B':
      print('Digite o primeiro valor');
      num num1 = num.parse(stdin.readLineSync()!);
      print('Digite o segubdo valor');
      num num2 = num.parse(stdin.readLineSync()!);

      num resposta = num1 - num2;

      print('Subtração: $resposta');

      break;
    case 'C':
      print("Digite o primeiro valor ");
      num num1 = num.parse(stdin.readLineSync()!);
      print('Digite o segubdo valor');
      num num2 = num.parse(stdin.readLineSync()!);

      num resposta = num1 * num2;

      print('Multiplicação: $resposta');

      break;
    case 'D':
      print('Digite o primeiro valor');
      num num1 = num.parse(stdin.readLineSync()!);
      print('Digite o segundo valor');
      num num2 = num.parse(stdin.readLineSync()!);

      num resposta = num1 / num2;

      print('Divisão: $resposta');

      break;
    default:
      print("Valor fora de faixa !");
      exit(0);
  }
}
