import 'dart:math';

void main() {
  int opcao = Random().nextInt(5 + 1);
  double numeroA = 12;
  double numeroB = 5;

  switch (opcao) {
    case 1:
      print('Soma: ${numeroA + numeroB}');
      break;
    case 2:
      print('Subtração: ${numeroA - numeroB}');
      break;
    case 3:
      print('Multiplicação ${numeroA * numeroB}');
      break;
    case 4:
      print('Divisão: ${numeroA / numeroB}');
      break;
    default:
      print('Operação inválida');
  }

  int dia = Random().nextInt(7 + 1);

  switch (dia) {
    case 1:
      print('Domingo');
      break;
    case 2:
      print('Segunda feira');
      break;
    case 3:
      print('Terça feira');
      break;
    case 4:
      print('Quarta feira');
      break;
    case 5:
      print('Quinta feira');
      break;
    case 6:
      print('Sexta feira');
      break;
    case 7:
      print('Sábado');
      break;
    default:
      print('Valor fora da faixa');
  }
}
