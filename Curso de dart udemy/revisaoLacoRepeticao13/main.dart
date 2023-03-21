/**
 * Faça um algoritmo  que a presenta em tela  a soma de todos os numeros  impares entre 1 e 1000 (1 +  2 + 3 + 5)
 */
void main() {
  int acumularValor = 0;

  for (int i = 0; i < 1000; i++) { // para testar coloque 10 no lugar de 1000 e ative o print()
    if (i % 2 != 0) {
     // print("Somar valor $i");
      acumularValor = acumularValor + i;
    } else {}
  }
  print(acumularValor);
}
