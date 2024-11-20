/**
 * Dado um Map que armazena produtos e suas quantidades em estoque, 
 * crie um novo Map contendo apenas os produtos com mais de 10 unidades.
 * 
 * Dica: Use o método .entries e o .where.
 */
void main() {
  Map<String, dynamic> estoque01 = {
    'produto01': 5,
    'produto02': 15,
    'produto03': 20,
    'produto04': 16,
    'produto05': 2,
    'produto06': 26,
    'produto07': 35,
    'produto08': 45,
    'produto09': 120,
    'produto10': 22,
  };

  Map<String, dynamic> novoEstoque =
      Map.fromEntries(estoque01.entries.where((entries){
      return entries.value > 10;
  }));

  print(novoEstoque);

  /**
   * Map.fromEntries() , é um construtor nomeado da classe Map
   * ele recebe como argumento uma coleção do tipo Iterable().
   * Quando passamos  map estoque01 e acessamos o membro de instância entries(Iterable<MapEntry<K, V>>), 
   * podemos acessar os valores e chaves do map atraves do atributo entries.
   */
}
