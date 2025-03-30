/**
 * Crie uma lista de números e utilize a função map com uma função anônima para retornar uma nova lista com os números ao quadrado.
 * 
 */
void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  List<int> novaLista = numeros.map((value) => value * value).toList();

  print(novaLista);
}
