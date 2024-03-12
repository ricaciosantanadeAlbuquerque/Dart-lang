import 'motor.dart';
import 'motorista.dart';
import 'peneu.dart';
import 'radio.dart';

class Carro {
  final Motorista motorista;
  RadioCarro? radio;
  final Motor motor;
  List<Peneu> listPeneu = [];

  Carro({required this.motorista, required this.motor}) {
    for (var i = 0; i < 5; i++) {
      listPeneu.add(Peneu(fabricante: 'Toyota', calibre: 3.66));
    }
  }

  void adicionarRadio(RadioCarro radio) {
    this.radio = radio;
  }

  void excluirRadio() {
    this.radio = null;
  }

  void excluirPeneus() {
    this.listPeneu.clear();
  }

  @override
  String toString() => 'Motorsta:${motorista.toString()}, Motor:${this.motor.toString()}, Radio:${this.radio.toString()}, Peneus:${listPeneu}';
}
