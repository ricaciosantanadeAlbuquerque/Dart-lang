import 'dart:io';
import 'dart:math';

void main() {
  Random num1 = Random();
  List<List<int>> matriz = [];
  List<int> numeros;
  for (int i = 0; i < 50; i++) {
    numeros = [];
    for (int j = 0; j < 20; j++) {
      int numero = num1.nextInt(1000) + 1;
      numeros.add(numero);
    }
    matriz.add(numeros);
  }

  print(matriz);
  int caixa = 0;
  int linha = 0;
  int coluna = 0;
  print("================BUSCA==============");
  print("Digite o valor numerico que você busca ");
  String? entrada = stdin.readLineSync();
  int valor = int.parse(entrada!);
  for (int i = 0; i < 50; i++) {
    for (int j = 0; j < 20; j++) {
      print(matriz[i][j]);
      if (valor == matriz[i][j]) {
        caixa = matriz[i][j];
        linha = i;
        coluna = j;
        break;
      }
    }
  }

  print("O valor foi achado ! ${caixa} na posição $linha e $coluna");
}
