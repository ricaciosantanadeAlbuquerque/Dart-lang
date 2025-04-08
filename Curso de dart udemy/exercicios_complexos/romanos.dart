import 'dart:io';
/**
 * Crie uma função que converta um número romano (XIV, IX, LXX) para decimal.
 * 
 */
void main() => stdout.write(romanoDecimal(romano: 'lxx'.toUpperCase()));

int romanoDecimal({required String romano}) {
  Map<String, dynamic> mapRomano = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int total = 0;
  int valorAnterior = 0;

  for (int i = romano.length - 1; i >= 0; i--) {
    String letra = romano[i]; //cada letra da String passada será uma chave nome mapRomano.
    int valorAtual = mapRomano[letra]; // chave letra retorna um valor

    if (valorAtual < valorAnterior) {
      total -= valorAtual;
    } else {
      total += valorAtual;
    }

    valorAnterior = valorAtual;
  }

  return total;
}
