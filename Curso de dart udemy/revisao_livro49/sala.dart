import 'mesa.dart';

class Sala {
  int? _metros;
  List<Mesa> _mesa = [];

  Sala({required int metros}) {
    this._metros = metros;
  }

  int? get metros => this._metros;

  void set metros(int? metros) => this._metros = metros;

  List<Mesa> get mesa => this._mesa;

  void set mesa(List<Mesa> mesa) {
    this._mesa = mesa;
  }

  void inserirMesa({required Mesa mesa}) {
    this.mesa.add(mesa);
  }

  void excluirMesa() {
    this.mesa.clear();
    print(this.mesa.isEmpty);
  }

  void mostrandoSala() {
    print(_mesa);
  }

  void tamanhoSala() {
    print('Metros quadrados da sala $_metros');
  }

  String toString() => 'Metros Quadrados da sala: $_metros';
}
