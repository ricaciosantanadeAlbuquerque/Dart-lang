/**
 * Crie uma função que receba uma lista de Strings e uma palavra-chave.
A função deve retornar todas as palavras da lista que contêm essa palavra-chave (dica: use contains)
 */
void main() {
  List<String> texto = [
    'Rato',
    'bola de rato',
    'carro',
    'casa',
    'Tatu',
    'Rato Gordo'
  ];

  String chave = 'rato';

  // chamada a função

  List<String> resultado = buscaPalavra(texto, chave);

  print('Palavras que comtem a chave: $chave\n');

  resultado.forEach(print); // forEach(print) funçao resumida
}

List<String> buscaPalavra(List<String> listaPalavras, String chave) {
  return listaPalavras
      .where((palavra) => palavra.toLowerCase().contains(chave.toLowerCase()))
      .toList();
}
