import 'andar.dart';

class Edificio {
  int? altura;
  List<Andar> listAndar = [];

  Edificio({required int metrosQuadradosAndar}) {
    this.criarAndar(metrosQuadradosAndar);
  }

  void criarAndar(int metrosQuadradosAndar) {
    for (var j = 0; j < 10; j++) {
      listAndar.add(new Andar(metrosQuadradosAndar: metrosQuadradosAndar));
    }

    this.altura = listAndar.length * 2;
  }

  void excluirAndar() {
    for (var andar in listAndar) {
      andar.excluirSalas();
    }
    this.listAndar.clear();
  }

  void listarAndar() {
    for (var andar in listAndar) {
      print(andar.toString());
    }
  }

  @override
  String toString() => 'Altura:$altura, Andares:${listAndar}';
}
