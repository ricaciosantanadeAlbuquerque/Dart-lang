import 'dart:io';

void main() {
  print('Digite uma frase por favor !!');
  String? nome = stdin.readLineSync();

  if (nome != null && nome.isNotEmpty) {

    contarCaracteres(texto:nome);

  } else {
    stdout.write('ERRO!!! Digite valores válidos');
  }
}

void contarCaracteres({String texto = 'indefinido'}) {

  Map<String, int> mapContagem = {};

  // Toda String é um array de caracteres

  for (var i = 0; i < texto.length; i++) {  // 0 até tamanho - 1

    String caractere = texto[i];

    if (mapContagem.containsKey(caractere)) {
      mapContagem[caractere] = mapContagem[caractere]! + 1;
    } else {
      mapContagem[caractere] = 1;
    }
  }

  print(mapContagem);
}
