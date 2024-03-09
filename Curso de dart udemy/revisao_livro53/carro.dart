import 'motor.dart';
import 'motorista.dart';
import 'peneu.dart';
import 'radio.dart';

class Carro {
  Motorista? motorista;
  List<Peneu> listPeneu = [];
  Motor? motor;
  Radio? radio;

  Carro({required Motorista motorista}) {
    this.motorista = motorista;
    this.motor = Motor(motor: 2.0, cv: 68);
    this.criarPeneu();
  }

  void criarPeneu() {
    for (var j = 0; j < 5; j++) {
      listPeneu.add(Peneu(marca: 'Pirelli', calibre: 68.2));
    }
  }

  void adicionarRadio(Radio radio) {
    this.radio = radio;
  }

  void listarPeneus() {
    for (var item in listPeneu) {
      print(item.toString());
    }
  }

  @override
  String toString() {
    return motorista.toString() + motor.toString() + radio.toString();
  }
}
