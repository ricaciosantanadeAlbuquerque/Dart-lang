/**
 * Escreva uma função que recebe uma frase e retorna:

O número de vogais

O número de consoantes

O número de espaços
 */
import 'dart:io';

void main() {
  print('Digte uma frase !');
  String? frase = stdin.readLineSync();

  if (frase != null && frase.isNotEmpty) {
    Map<String, int> resultado = contadorVogaisConsoantesEspacos(frase: frase);
    print('\n Número de vogais ${resultado['vogais']}');
    print('\n Número de consoantes ${resultado['consoantes']}');
    print('\n Número de espaços ${resultado['espacos']}');
  } else {
    print('ERRO! Digite valores válidos');
  }
}

Map<String, int> contadorVogaisConsoantesEspacos({required String frase}) {
  // constantes
  const String vogais = 'aeiouAEIOU';
  const String consantes = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ';

  // contadores
  int contadorVogais = 0;
  int contadorConsoantes = 0;
  int contadorVazio = 0;

  for (var i in frase.split('')) {
    if (i == ' ') {
      contadorVazio++;
    } else if (vogais.contains(i)) {
      contadorVogais++;
    } else if (consantes.contains(i)) {
      contadorConsoantes++;
    }
  }

  return {
    'vogais': contadorVogais,
    'espacos': contadorVazio,
    'consoantes': contadorConsoantes,
  };
}
