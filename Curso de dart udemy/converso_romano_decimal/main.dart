/**
 * Crie uma função que converta um número romano (XIV, IX, LXX) para decimal.


 */
import 'dart:io';

void main() {
  print('Digite um valor numérico em algarismo romano');
  String? romano = stdin.readLineSync();

  (romano != null && romano.isNotEmpty)
      ? print('O $romano em decimal é ${romanoParaDecimal(romano: romano)}')
      : print('Digite valores válidos');
}

int romanoParaDecimal({required String romano}) {
  // Criando catalogo map romano decimal

  Map<String, int> catalogoRomano = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  int total = 0;
  int ultimoValor = 0;

  // Percorrendo a String de trás para frente
  for (int i = romano.length - 1; i >= 0; i--) {
    int valorAtual = catalogoRomano[romano[i]] ?? 0;

    // Se o valor atual for menor que o último, deve ser subtraído

    if (valorAtual < ultimoValor) {
      total -= valorAtual;
    } else {
      total += valorAtual;
    }

    ultimoValor = valorAtual;
  }

  return total;
}
