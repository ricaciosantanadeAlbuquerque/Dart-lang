/**
 * Crie uma lista de números e utilize a função map com uma
 *  função anônima para retornar uma nova lista com os números ao quadrado.
 */

void main(List<String> args) {
  List<int> numeroPrimeiroValor = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(numeroPrimeiroValor);
  print('');
  // Mapeando uma lista

  var listaValorDobrado =
      numeroPrimeiroValor.map((value) => value * 2).toList();

  print('Lista de valores dobrados. $listaValorDobrado');
}
