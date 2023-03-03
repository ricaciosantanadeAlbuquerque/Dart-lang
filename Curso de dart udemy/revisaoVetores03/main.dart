/**
 *  Crie um algoritmo para ler 10 números inteiros e mostrar os números pares deste vetor;
 */
void main() {
  List<int> vetorNumero = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; // 0 a 9;

  for (var elemento in vetorNumero) {
    if (elemento % 2 == 0) {
      print(" $elemento ");
    }
  }
}
