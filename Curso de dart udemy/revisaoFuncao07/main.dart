/**
 *  Faça uma função que recebe, por parâmetro, uma matriz A(6,6) e retorna a soma dos elementos da sua diagonal principal e da sua  *  *  diagonal secundária.
 */
void main() {
  List<List<int>> Matrizz = [];
  int cont = 0;
  for (var i = 0; i < 3; i++) {
    List<int> lista = [];
    for (var j = 0; j < 3; j++) {
      cont++;
      lista.add(cont);
    }
    Matrizz.add(lista);
  }

  somarValor(p: Matrizz);
}

void somarValor({required List<List<int>> p}) {
  int principal = 0;
  int secundaria = 0;
  for (var element in p) {
    // mostrar matriz
    print(element);
  }

  int coluna = 3;
  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      if (i == j) {
        principal += p[i][j]; // acumulando valores
      }
    }
  }
  print("=============");
  for (var j = 0; j < 3; j++) {
    secundaria += p[j][coluna - 1 - j]; // 0 a 2 - indice que vai interar
  }
  print("\nA soma da diagonal principal é $principal\n");
  print("\nA soma da diagonal secundária é $secundaria\n");
}
