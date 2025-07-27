/**
 * Classe ConjuntoSeguro<T>
Crie uma classe que encapsula um Set<T>, com:

Método void adicionar(T? item) que ignora null

Método bool contem(T item)

Getter tamanho que retorna o número de elementos
 */

class ConjuntoSeguro<T> {
  final Set<T> _conjunto = {};
  
  void adicionar(T? item) {
    if (item != null) {
      _conjunto.add(item);
    }
  }

  bool contem(T item) => _conjunto.contains(item);

  int tamanho() => _conjunto.length;

  void limpar() => _conjunto.clear();
}
