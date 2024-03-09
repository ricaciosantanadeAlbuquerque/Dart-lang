import 'sala.dart';

class Andar {
  final int numeroAndar;
  final int metrosQuadrados;
  final List<Sala> listSala = [];

  Andar({required this.numeroAndar, required this.metrosQuadrados}) {
    for (var j = 0; j < 4; j++) {
      listSala.add(Sala(numeroSala: j, metrosQaSala: (metrosQuadrados ~/ 4)));
    }
  }
  void mostraSalas() {
    for (var item in listSala) {
      print(item.toString());
    }
  }

  void excluirSala() {
    for (var item in listSala) {
      item.excluirMesa();
    }
    listSala.clear();
  }

  @override
  String toString() => 'Número do Andar $numeroAndar, Metros Quadrados do andar: $metrosQuadrados,';
}
