import 'sala.dart';

class Andar {
  final int metrosQuadradosAndar;
  List<Sala> listSala = [];

  Andar({required this.metrosQuadradosAndar}) {
    this.criarSala(metrosQuadradosAndar);
  }

  void criarSala(int metosQuadrados) {
    for (var i = 0; i < 4; i++) {
      this.listSala.add(new Sala(metrosQuadradosSala: (metosQuadrados ~/ 4)));
    }
  }

  void excluirSalas() {
    for (var sala in listSala) {
      sala.excluirMesas();
    }
    this.listSala.clear();
  }

  void listarSalas() {
    for (var item in listSala) {
      print(item.toString());
    }
  }

  @override
  String toString() {
    return ' Metros quadrados andar:$metrosQuadradosAndar lista sala:${listSala} ';
  }
}
