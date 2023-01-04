import 'dart:io';
import 'dart:math';

/**
 * 7 – Faça um programa para ler os elementos de uma matriz 5 x 5. Em seguida, receba do usuário um valor X. O 
programa deverá fazer a busca desse valor na matriz e, ao final, escrever a localização do elemento (mostrar a 
linha e coluna). Caso não encontre, deve mostra ruma mensagem de “não encontrado”.
 */
void main() {
  Random aletorio = Random();
  List<List<int>> matriz = []; // é uma lista que recebe uma lista de inteiros, na posição 0 terá uma lista e na 1 outra lista
  List<int> vetor;
//preenchendo a matriz
  for (var i = 0; i < 5; i++) {
    List<int> vetor = []; // nos criamos  a litas  vetor
    for (var j = 0; j < 5; j++) {
      // adicionamos 5 valores dentro dela aleatoriamente.
      int num1 = aletorio.nextInt(50) + 1;
      vetor.add(num1);
    }
    matriz.add(vetor); // e por fim adicionamos a lista vetor  na posição 0 da lista matriz
  }
  // cada vez que o loop mais externo é executado  a lista vertor é recriada, isto é necessário para que a lista não acumule os valores de cada loop mais interno
  print(matriz);

  // busca na ma linear

  print("Por favor digite o valor que você busca!");
  String? entrada = stdin.readLineSync();
  int valorBusca = int.parse(entrada!);
  bool achou = false;

  for (var linha = 0; linha < matriz.length; linha++) {
    for (var coluna = 0; coluna < matriz.length; coluna++) {
      if (valorBusca == matriz[linha][coluna]) {
        achou = true;
        print("O valor ${matriz[linha][coluna]} está na linha $linha $coluna");
        break;
      }
    }
  }

  if (achou != true) {
    print("O valor não existe dentro do matriz ");
  }
}
