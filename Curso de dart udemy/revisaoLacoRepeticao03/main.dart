/**
 * Faça um algoritmo que calcule a soma dos 
 * números inteiros de 1 a 100
 */
void main() {
  int acumulador = 0;

  for (var i = 1; i <= 100; i++) {
    acumulador += i;
  }

  print("A soma de todos os números entre 1 e 100 é ${acumulador}");
}
