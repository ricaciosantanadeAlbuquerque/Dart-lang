/**
 * Elabore uma classe que recebe dez nomes de pessoas por meio stdin e armazene esses nomes em um array de dez elementos,sortei um ganhador e imprima o  seu nome em tela.
 */
import 'dart:io';
import 'dart:math';

void main() {
  Random objecto = Random();
  List<String> nomes = [];

  for (int i = 0; i < 10; i++) {
    print("Digite seu nome por favor ");
    String? entrada = stdin.readLineSync();
    nomes.add(entrada!);
  }

  print(nomes);
  int num1 = objecto.nextInt(10);
  for (int j = 0; j < 10; j++) {
    if (num1 == j) {
      print("O ganhador foi ${nomes[j]}");
    }
  }
}
