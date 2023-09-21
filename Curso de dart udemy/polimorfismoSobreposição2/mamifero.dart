import 'animal.dart';

class Mamifero extends Animal {
  
  String? _corPelo;

  String? get corPelo => this._corPelo;

  void set corPelo(String? corPelo) {
    this._corPelo = corPelo;
  }

  @override
  void emitirSom() {
    print("Som de Mamifero");
  }
}
