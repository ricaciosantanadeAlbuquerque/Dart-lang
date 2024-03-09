import 'andar.dart';

class Edificil {
  int? _altura;
  List<Andar> andares = [];

  Edificil() {
    for (var i = 0; i < 10; i++) {
      andares.add(Andar(numeroAndar: i, metrosQuadrados: 1200));
    }

    this._altura = andares.length * 2;
  }

  int? get altura => this._altura;

  void set altura(int? altura) => this._altura = altura;

  void listarAndares() {
    for (var item in andares) {
      print(item.toString());
    }
  }

  void excluirAndares() {
    for (var item in andares) {
      item.excluirSala();
    }

    this.andares.clear();
  }

  @override
  String toString() => 'Altura: $_altura';
}
