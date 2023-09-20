import 'animal.dart';

class Ave extends Animal {
  String? corPena;

  void fazerNinho() {
    print("Construindo um Ninho !");
  }

  // polimorfismo de sobreposição obrigatório neste caso
  @override
  void alimentar() {
    print("Comendo frutas");
  }

  void locomover() {
    print("Voando");
  }

  void emitirSom() {
    print("Canto de ave ");
  }
}
