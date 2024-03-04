import 'mesa.dart';

/// O todo sala agrega uma lista de mesas de 0 a N
class Sala {
  final int numero;
  final int metrosQuadrados;
  final List<Mesa> mesa = [];
  /**
   * A lista é final sua referência na memória não muda. porém seus elementos da lista sim podem mudar.
   * podemos adicionar elementos e excluir, até mesmo os atribultos dos objetos da lista podem variar.
   * O que não muda é mesa. Mesa será sempre uma lista. 
   */

  Sala({required this.metrosQuadrados, required this.numero});

  void inserirMesa({required Mesa mesa}) {
    this.mesa.add(mesa);
  }

  void excluirMesas() {
    this.mesa.clear();
    print(mesa.isEmpty);
  }

  void mostrarListaMesa() {
    for (var itemMesa in mesa) {
      print(itemMesa.toString());
    }
  }

  String toString() => 'Metros quadrados: ${this.metrosQuadrados}';
}
