/**
 * 4️⃣ Conversão entre List e Set
Crie uma lista de nomes com alguns nomes repetidos.

Converta a lista para um Set para remover duplicatas.

Depois, converta o Set de volta para uma List
 */

void main() {
  //Crie uma lista de nomes com alguns nomes repetidos.
  final List<String> nomes = [
    'ricacio',
    'lucas',
    'dora',
    'carmem',
    'ana',
    'nino',
    'ricacio'
  ];

  // converntendo a lista para coleção Set<>
  final Set<String> nomesUnicos = Set.from(nomes);

  //Depois, converta o Set de volta para uma List.
  final List<String> novaListaNomes = nomesUnicos.toList();

  /**
   * Todas as 3 coleções são constântes finais,Sua posição na memório não muda e
   * nem pode ser sobreposta.(no caso alterada).
   */

  print(novaListaNomes);
}
