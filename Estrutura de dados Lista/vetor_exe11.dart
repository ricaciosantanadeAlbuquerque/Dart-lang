import 'dart:math'; // importamos a calsse matemática
/* 10 – Faça um programa para sortear 5 números diferentes entre 1 e 10. Armazene os valores  sorteados num 
vetor de 5 posições e, em seguida, exiba-os. Atenção: os valores armazenados não podem se repetir. */
void main() {
  Random rand = new Random(); // criamos um objeto da classe radom
  List<int>? num = [];
  List<int>? num1 = [];
  List<int>? valor = [];
  for (int i = 0; i < 5; i++) {
    num.add(rand.nextInt(10) + 1); // geramos um valor aleatório entre 1 e 10
  }

  print(num);
  print("\n");

  int cont = 0;
  for (int i = 0; i < num.length;i++) { // vai de 0 até o tamanho -1
    num1.add(num[i]);
    cont++;
  }

  for (int x = 0, y = x + 1; y < num1.length; x++, y++) {
    // x = 0 y = 1 x = 1 y = 2 x = 2 y =3 x = 4 y = 5  erro :( por isso não é x menor que num1
    if (num1[x] == num1[y]) {
      // num1[na posição x] tem o valor igual há num1[y]
      num1.removeAt(x); // se sim remova
    }
  }

  print(num1); //porém ainda podem ficar valores redundantes então,
  /*  fazemos uma varredura comparando  a posição 0 com todas as posições de 1 para 
  frente  e assim por diante  */

  for (int i = 0; i < num1.length; i++) {
    for (int j = i + 1; j < num1.length; j++) {
      if (num1[i] == num1[j]) {
        num1.removeAt(j);
      }
    }
  }
  print(num1);
}
