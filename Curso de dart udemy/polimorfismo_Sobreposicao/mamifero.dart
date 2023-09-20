

import 'animal.dart';

class Mamifero extends Animal {
  String? _corPelo;

  String? get corPelo => this._corPelo;

  void set corPelo(String? cor) => this._corPelo;

/**
 * Polimorfismo de sobreposição obrigatória
 */

  @override
  void locomover() {
    print("Correndo");
  }

  @override
  void alimentar() {
    print('Alimenta como mamifero');
  }

  @override
  void emitirSom() {
    print('Som de mamifero');
  }
}
