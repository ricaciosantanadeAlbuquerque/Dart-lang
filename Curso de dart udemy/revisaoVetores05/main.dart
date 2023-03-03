/**
 * Ler 2 vetores, R de 5 elementos e S de 10 elementos. Gere um vetor X que possua os elementos
   comuns a R e a S. Considere que no mesmo vetor não haverá números repetidos. Escrever o vetor X.
 */
import "dart:math";

void main() {
  Random objeto1 = Random();
  List<int> vetor1 = [];
  for (var i = 0; i < 5; i++) {
    // 0 a 4
    vetor1.add(objeto1.nextInt(10 + 1));
  }
  List<int> vetor2 = [];
  for (var j = 0; j < 10; j++) {
    vetor2.add(objeto1.nextInt(10 + 1));
  }
  List<int> vetor3 = [];
  for (int i = 0; i < vetor1.length; i++) {
    // 0 a 9
    for (int j = 0; j < vetor2.length; j++) {
      if (vetor1[i] == vetor2[j]) {
         vetor3.add(vetor2[j]);
      }
    }
  }
  print(vetor1);
  print(vetor2);
 // print(vetor3);

  for (int i = 0; i < vetor3.length - 1; i++) {
    for (int j = i+1; j < vetor3.length; j++) {
      if (vetor3[i] == vetor3[j]) {
        vetor3.remove(vetor3[j]);
      }
    }
  }

  //print(vetor3);


  for (int i = 0; i < vetor3.length - 1; i++) {
    for (int j = i + 1; j < vetor3.length; j++) {
      if (vetor3[i] == vetor3[j]) {
        vetor3.remove(vetor3[j]);
      }
    }
  }

  print(vetor3);
}
