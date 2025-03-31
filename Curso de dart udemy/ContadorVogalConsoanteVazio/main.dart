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
    print(contadorVogaisConsoantesvazio(frase: frase));
  } else {
    print('ERRO! Digite valores válidos');
  }
}

Map<String, int> contadorVogaisConsoantesvazio({required String frase}) {
  // constantes
  const String vogais = 'aeiouAEIOU';
  const String consantes = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ';

  // contadores
  int contadorVogais = 0;
  int contadorConsoante = 0;
  int contadorVazio = 0;

  for (var i in frase.split('')) {
    if (i == ' ') {
      contadorVazio++;
    } else if (vogais.contains(i)) {
      contadorVogais++;
    } else if (consantes.contains(i)) {
      contadorConsoante++;
    }
  }

  return {
    'vogais': contadorVogais,
    'vazio': contadorVazio,
    'consoante': contadorConsoante,
  };
}
