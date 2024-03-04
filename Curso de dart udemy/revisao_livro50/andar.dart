import 'sala.dart';

class Andar {
  final int numero;
  final int metroQuadadrosAndar;
  final List<Sala> listSalas = [];
  /**
  * Para criação de 1 objeto andar criamos 4 objetos sala
  */
  Andar({required this.metroQuadadrosAndar, required this.numero}) {
    for (var i = 0; i < 4; i++) {
      var sala = Sala(metrosQuadrados: (metroQuadadrosAndar ~/ 4), numero: i);
      listSalas.add(sala);
    }
  }

  void mostrarSala() {
    for (var item in listSalas) {
      print(item.toString());
    }
  }

  void excluirSalas() {
    for (var item in listSalas) {
      item.excluirMesas();
    }
    this.listSalas.clear();
    print(this.listSalas.isEmpty);
  }

  @override
  String toString() => 'Metros Quadraos do andar ${metroQuadadrosAndar}, Número do andar $numero';
}
