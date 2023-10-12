import 'moto.dart';
import 'motorista.dart';
import 'peneu.dart';
import 'radioCarro.dart';

class Carro {
  final Motorista motorista;
  final List<Peneu> peneu = [];
  Motor? motor;
  Radiocarro? radio;

  Carro({required this.motorista, required num numeroId, required String fabricante, required num power, required String motorFabri}) {
    for (int i = 0; i < peneu.length; i++) {
      peneu.add(Peneu(numeroId: numeroId, fabrica: fabricante));
    }

    this.motor = Motor(power: power, fabricante: motorFabri);
  }

  void addRadio(Radiocarro radio) {
    this.radio = radio;
  }

  void acelerar() {
    this.motor!.potencia();
  }

  void frear() {
    this.motor!.reduzir();
  }
}
