//Faça um função que recebe 2 vetores A e B de tamanho 10 de inteiros, por parâmetro. Ao final da fução B deve conter o soma de cada elemento de A. O vetor B deve retornar alterado.
import 'dart:math';

void main() {
  preenchendoVetores();
}

void preenchendoVetores() {
  Random ale = new Random();
  var vetorA = [];
  var vetorB = [];

  for (var i = 0; i < 10; i++) {
    // 0 a 9
    int valor = ale.nextInt(10) + 1;
    vetorA.add(valor);
  }
  print("======VetorA======/n");
  print(vetorA);
   print("======VetorA======/n");
  somaValores(vetorA, vetorB);
 
}

void somaValores([List<dynamic>? vetorA, List<dynamic>? vetorB]) {
  for (var i = 0, j = 1; j < vetorA!.length; i++, j++) {
    vetorB!.add(vetorA[i] + vetorA[j]);
  }
  print("\n======VetorB======\n");
  print(vetorB);
  print("======VetorB======\n");
}
