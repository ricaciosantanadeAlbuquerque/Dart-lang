import 'mesa.dart';

class Sala {
  final int numeroSala;
  final int metrosQaSala;
  final List<Mesa> mesa = [];

  Sala({required this.metrosQaSala, required this.numeroSala});

  void adicionarMesa({required Mesa mesa}) {
    this.mesa.add(mesa);
  }

  void excluirMesa() {
    this.mesa.clear();
  }

  void listarMesas() {
    for (var item in mesa) {
      print(item.toString());
    }
  }

  @override
  String toString() => 'Número da sala: $numeroSala, Metros Quadrados:$metrosQaSala';
}
