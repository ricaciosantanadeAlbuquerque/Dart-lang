/**
 * Crie um Map que associa países aos seus códigos de discagem (ex.: "Brasil": 55).
 * A partir deste Map, gere um novo Map em que os códigos de discagem sejam as chaves e os países, os valores.
 * Dica: Percorra o Map e crie um novo invertendo as associações.
 */

void main() {
  Map<String, int> ddds = {
    'Brasil': 55,
    'Estados Unidos': 1,
    'Argentina': 54,
    'Portugal': 351,
    'Japão': 81,
  };

  final novoMap = ddds.map((key, value) => MapEntry(value, key));

  print(novoMap);

  novoMap.forEach((key, value) {
    print('Chave:$key, Valor:$value');
  });


  // Mapeamos um Map<> ddds Para um novo Map<>, utilizando a função map() + objeto MapEntry()
}