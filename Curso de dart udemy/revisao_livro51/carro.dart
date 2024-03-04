import 'motor.dart';
import 'motorista.dart';
import 'peneu.dart';
import 'radio.dart';

class Carro {
  final Motorista motorista;
  final List<Peneu> peneu;
  final Motor motor;
  RadioCarro? radio;

  Carro({required this.motorista, required this.peneu, required this.motor});

  void adicionarRadio(RadioCarro radio) => this.radio = radio;

  List<Peneu> mostrarPeneus() {
    return peneu;
  }

  @override
  String toString() {
    return 'Motorista:${this.motorista.toString()}, Motor:${this.motor.toString()}, Peneus:${this.mostrarPeneus()} Rádio:${this.radio.toString()}';
  }
}
