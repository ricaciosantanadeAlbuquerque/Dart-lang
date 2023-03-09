/**
 *  Faça uma função que recebe, por parâmetro, uma matriz A(5,5) e retorna a soma dos seus elementos.
 */
import 'dart:math';

void main() {
  List<List<int>> matriz = [];

  for (int i = 0; i < 5; i++) {
    List<int> vetor = []; // estamos criando cinco listas 'vetor'.
    for (int j = 0; j < 5; j++) {
      var j = Random().nextInt(25) + 1; // estamos gerando valores aleatórios 1 e 25.
      vetor.add(j); // estamos preenchendo 'vetor' com cinco elementos.
    }
    matriz.add(vetor); // por fim estamos adicionando  'vetor' a 'matriz'
  }
  print(matriz);
  print("\n O resultado da soma de todos os valores da matriz é ${somar(matriz:matriz)} \n");
}

int somar({required List<List<int>> matriz}) {
 
  int somarValor = 0;

  for (var elemento in matriz) {
    for (var j = 0; j < elemento.length; j++) {
      somarValor += elemento[j];
    }
  }


  return somarValor;
}
