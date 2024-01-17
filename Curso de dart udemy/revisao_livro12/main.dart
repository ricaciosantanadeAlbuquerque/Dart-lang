/**
 * Elabore um programa que mostra em tela a soma de todos os números impares entre 1 e 1000.(1 + 3 + 5 + ... +999)
 * resposta deve ser == 250000.
 */
void main() {
  int somaAcumulaDora = 0;

  for (var i = 0; i < 1000; i++) {
    if (i % 2 != 0) {
      somaAcumulaDora += i;
    }
  }
  print(somaAcumulaDora);
}
