void main() {
  var result = contadorPalavra(palavra: 'O gato comeu o Peixe o rato');

  print(result);
}

Map<String, int> contadorPalavra({required String palavra}) {
  var arrayPalavra = palavra
      .toLowerCase()
      .replaceAll(RegExp(r'[^\w\s]'), '')
      .trim()
      .split(RegExp(r'\s+'));
  Map<String, int> mapContador = {};

  for (var key in arrayPalavra) {
    mapContador[key] = (mapContador[key] ?? 0) + 1;
  }

  return mapContador;
}


/**
 *  Crie uma função que recebe uma frase e retorna um Map onde as
 *  chaves são as palavras da frase e os valores são a quantidade de vezes que cada palavra aparece.
 *  Exemplo: "o gato e o cachorro" → {o: 2, gato: 1, e: 1, cachorro: 1}.
 */
