/**
 * Crie uma função que recebe uma List<int> com números 
 * possivelmente repetidos e retorne um Set<int> com os valores únicos.
 * Adicione um assert para garantir que a lista não seja nula.
 */

Set<int> numerosUnicos(List<int> lista) {
  assert(lista.isNotEmpty);
  return lista.toSet(); // toSet() converte uma lista para set()
}
