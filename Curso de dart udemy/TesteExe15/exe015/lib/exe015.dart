/**
 * Crie uma função genérica que una dois conjuntos e retorne o resultado.
 * 
Adicione assert para evitar entrada nula.
 */

Set<int> uniao(Set<int> n1, Set<int> n2) {
  assert(n1.isNotEmpty && n2.isNotEmpty);
  return n1.union(n2);
}

/**diferenca(Set<T> a, Set<T> b)
Crie uma função que retorna os elementos que estão apenas no primeiro conjunto.

Use assert() para garantir que os dois conjuntos são válidos. */

Set<num> diferenca({required Set<num> n1, required Set<num> n2}) {
  assert(n1.isNotEmpty && n2.isNotEmpty);
  return n1.difference(n2);
}
