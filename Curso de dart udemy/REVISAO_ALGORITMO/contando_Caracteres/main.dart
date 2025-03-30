import 'dart:io';

void main() {
  print('Digite uma frase por favor');
  String? entradaNome = stdin.readLineSync();

  if (entradaNome != null && entradaNome.isNotEmpty) {
    Map<String,int> result = contadorCaractere(entradaNome.trim().toLowerCase().replaceAll(RegExp(r'\s+'),''));
    print('Mostrando a quantidade de vezes que cada palavra aparece');
    print(result);
  } else {
    print('Digite valores válidos');
  }
}

Map<String, int> contadorCaractere(String palavra) {
  Map<String, int> mapContador = {};

  for (var element in palavra.split('')) {
    if (mapContador.containsKey(element.trim())) {
      mapContador[element] = mapContador[element]! + 1;
    } else {
      mapContador[element] = 1;
    }
  }

  return mapContador;
}

/**
 *  Peça para o usuário digitar uma frase (pode ser uma variável fixa)
 *  e crie uma função que conte quantas vezes cada caractere aparece.
 *   Exemplo: "banana" → {'b': 1, 'a': 3, 'n': 2}.
 */