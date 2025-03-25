import 'dart:io';

void main() {
  print('Digite uma frase por favor !');
  String? entradaTexto = stdin.readLineSync();

  if (entradaTexto != null && entradaTexto.isNotEmpty) {
    Map<String, int> resultado = contadorPalavras(entradaTexto);
      
      resultado.entries.toList().sort((a,b) => b.value.compareTo(a.value)); // desc

    resultado.forEach((chave, valor) {
      print('$chave : $valor');
    });
  } else {
    print('ERRO! Digite algo válido');
  }
}

Map<String, int> contadorPalavras(String palavra) {
  List<String> arrayTexto = palavra.toLowerCase().trim().split(RegExp(r'\s+'));
  Map<String, int> palavraContada = {};

  for (var palavra in arrayTexto) {
    palavraContada[palavra] = (palavraContada[palavra] ?? 0) + 1;
  }

  return palavraContada;
}
