import 'dart:io';

/**
 * Utilizando a estrutura (switch case default), faça um programa que recebe um valor numerico e retorna o dia da semana.
 * é necessário fazer o tratamento da entrada dos valores.
 * 
 */
void main() {
  test();
}

void test() {
  print('Digite um valor numerico entre 1 e 7');
  String? entradaValor = stdin.readLineSync();

  // tratamento

  if (entradaValor != null) {
    if (entradaValor.isNotEmpty) {
      try {
        // converção
        int op = int.parse(entradaValor);

        switch (op) {
          case 1:
            print("Domingo");
            break;
          case 2:
            print('Segunda');
            break;
          case 3:
            print('Terça');
            break;
          case 4:
            print('Quarta');
            break;
          case 5:
            print('Quinta');
            break;
          case 6:
            print('Sexta');
            break;
          case 7:
            print('Sábado');
            break;
          default:
            print('Valor fora da faixa');
            exit(0);
        }
      } catch (e) {
        throw Exception('ERRO! $entradaValor não é um valor numérico');
      }
    } else {
      print('ERRO!!! valor vazio ');
    }
  } else {
    print("ERRO! valor nulo");
  }
}
