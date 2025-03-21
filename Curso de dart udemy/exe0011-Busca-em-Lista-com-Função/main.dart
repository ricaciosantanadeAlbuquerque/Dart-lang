/**
 * Crie uma função que receba uma lista de Strings e uma palavra-chave.
A função deve retornar todas as palavras da lista que contêm essa palavra-chave (dica: use contains).
 */
void main() {
  var listaPalvras = [
    'bola',
    'jogar bola',
    'jogo de futbol com bola de campo',
    'beber água'
  ];

  String chave = 'bola';

  // chamada a função

  var resultado = buscaPalavras(args: listaPalvras, texto: chave);

  print('Lista: $listaPalvras \n');
  print('Chave para filtragem: $chave \n');
  print('Resultado: $resultado \n');
}

List<dynamic> buscaPalavras({List<String>? args, String texto = ''}) {
  var result = [];

  if (args != null && texto.isNotEmpty) {
    for (var element in args) {
      if (element.contains(texto)) {
        result.add(element);
      }
    }
  } else {
    print('Valores não válidos !!');
  }

  return result;
}
