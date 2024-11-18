void main() {
  Map<int, String> mapNumero = {
    1: 'um',
    2: 'dois',
    3: 'Três',
    4: 'Quatro',
    5: 'Cinco',
    6: 'Seis'
  };

  Map<int, String> lista = mapNumero.map((key, value) {
    return MapEntry(key, '${key}:${value}');
  });
  
  List<String> listaFinal = [];
  lista.forEach((key, value) {
    listaFinal.add(value);
  });

  print(listaFinal);
}


/**
 * Descrição: Crie um Map que relacione números (chaves) com suas formas escritas por extenso (valores). 
 * Converta esse Map em uma lista de strings, onde cada string é no formato "número: palavra".
 * Dica: Use métodos como .entries e .map.
 */