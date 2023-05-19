/**
 *  Faça um programa para ler os elementos de uma matriz 5 x 5. Em seguida, receba do usuário um valor X. O 
programa deverá fazer a busca desse valor na matriz e, ao final, escrever a localização do elemento (mostrar a 
linha e coluna). Caso não encontre, deve mostra ruma mensagem de “não encontrado”
 */
import 'dart:io';

void main() {
  bool achou = false;
  List<List<int>> matriz = const [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20],
    [21, 22, 23, 24, 25]
  ];

  print("Digite o valor que você busca !");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty == true) {
      try {
        int busca = int.parse(entrada);

        for (var linha = 0; linha < matriz.length; linha++) {
          for (var coluna = 0; coluna < matriz.length; coluna++) {
            if (busca == matriz[linha][coluna]) {
              print("Valor: ${matriz[linha][coluna]}");
              print("Linha: $linha");
              print("Coluna: $coluna");
              achou = true;
              break;
            }
          }
        }
      } catch (e) {
        throw Exception('ERRO! $entrada não é um valor numérico.');
      }
    } else {
      print("ERRO! vazio.");
    }
  } else {
    print("Erro! nulo.");
  }

  if (achou == false) {
    print("O valor não existe !");
  }
}
