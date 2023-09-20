

import 'animal.dart';

class Peixe extends Animal {
  String? corEscama;

  void soltarBolhas() {
    print("Soltando bolhas");
  }

  @override
  void locomover() {
    print("Nadando !");
  }

  @override
  void alimentar() {
    print("Come substâncias");
  }
  @override
  void emitirSom() {
    print("Peixe não emite Som");
  }
}
