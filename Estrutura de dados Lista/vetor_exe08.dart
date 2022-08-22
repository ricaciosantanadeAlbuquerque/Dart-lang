import 'dart:io';
/*
  7 – Faça um programa para ler os elementos de uma matriz 5 x 5. Em seguida, receba do usuário um valor X. O 
programa deverá fazer a busca desse valor na matriz e, ao final, escrever a localização do elemento (mostrar a 
linha e coluna). Caso não encontre, deve mostra ruma mensagem de “não encontrado”. */
void main() {
  int size = 10;
  int cont = 0;
  List<List<int>> matrix = [];
  for (int i = 0; i < 5; i++) {
    List<int> list = [];
    for (int j = 0; j < 5; j++) {
      list.add(cont);
      cont++;
    }
    matrix.add(list);
  }
  print(matrix);
  print("Digite um valor ");
  String? valor = stdin.readLineSync();
  int novoValor = int.parse(valor!);
  bool achou = false;
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix.length; j++) {
      if (novoValor == matrix[i][j]) {
        print(
            "O elemento está na linha ${i} e coluna ${j} e seu valor é ${matrix[i][j]}");
        break;
      }
    }
  }
  if (!achou) {
    print("O valor não foi encontrado dentro do Lista ");
  }
}
