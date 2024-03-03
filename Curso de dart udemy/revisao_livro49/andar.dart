import 'sala.dart';

class Andar {
  int? _numeroAndar;
  int? _metros;
  List<Sala> _sala = [];

  Andar({required int metros, required int numero}) {
    this._numeroAndar = numero;
    this.metros = metros;
    this.criarSala(metrosSala: (metros ~/ 4) ~/ 3);
  }

  int? get metros => this._metros;

  void set metros(int? metros) => this._metros = metros;

  List<Sala> get sala => this._sala;

  void set sala(List<Sala> sala) => this._sala = sala;

  void metrosQuadradosPorAndar() {
    print('$_metros Quadrados por andar');
  }

  void criarSala({int metrosSala = 0}) {
    for (var i = 0; i < 4; i++) {
      this._sala.add(Sala(metros: metrosSala));
    }
  }

  void excluirSalas() {
    for (var item in sala) {
      item.excluirMesa();
    }
    this._sala.clear();
    print(sala.isEmpty);
  }

  void mostrarSala() {
    for (var item in this._sala) {
      print(item.toString());
    }
  }

  @override
  String toString() => 'Número do andar : $_numeroAndar, Metros Quadrados do andar $_metros, ';
}
