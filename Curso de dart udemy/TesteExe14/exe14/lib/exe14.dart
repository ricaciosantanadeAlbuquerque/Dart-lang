/**
 * intersecao(Set<int> a, Set<int> b)
Crie uma função que retorne a interseção entre dois conjuntos.

Adicione assert para garantir que ambos os sets não sejam nulos.
 */

Set<int> intersecao(Set<int> setN1, Set<int> setN2) {
  assert(setN1.isNotEmpty && setN2.isNotEmpty);
  return setN1.intersection(setN2);
}
