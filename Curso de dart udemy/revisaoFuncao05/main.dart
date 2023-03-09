/**
 * Faça um procedimento que recebe 2 vetores A e B de tamanho 15 de inteiros, por parâmetro. O vetor B deve conter o somatório de cada  * elemento de A. 
 */
void main(List<String> args) {
  var A = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  List<int> B = [];
  somarValor(arrayA: A,arrayB: B);
}

//==============================
void somarValor({required List<int> arrayA, required List<int> arrayB}) {
  for (var j = 0, i = j + 1; i < arrayA.length; j++, i++) {
    arrayB.add(arrayA[j]+arrayA[i]);
  }
  print("\n${arrayB}\n");
}
