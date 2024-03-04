import 'andar.dart';

class Edificio {
  int? _altura;
  final List<Andar> andares = [];

  Edificio() {
    for (var j = 0; j < 10; j++) {
      andares.add(Andar(metroQuadadrosAndar: 500, numero: j));
    }
    this._altura = andares.length * 2;
  }

  void excluirAndar() {
    for (var andar in andares) {
      andar.excluirSalas();
    }
    this.andares.clear();
    print(this.andares.isEmpty);
  }

  @override
  String toString() => 'Altura do edifício:$_altura';
}
