import 'animal.dart';

class Reptil extends Animal {
  String? _corEscama;

  String? get corEscama => this._corEscama;

  void set corEscama(String? corEscama) => this._corEscama = corEscama;
  /**
   * Ao estender uma classe abstrata, somos obrigados a sobrepor e implementar seus métodos abstratos
   */

  @override
  void alimentar() {
    print("Come vegetais insetos e carne !");
  }
 @override
  void locomover() {
    print("Rastejando");
  }
  @override
  void emitirSom() {
    print("Som de reptil ");
  }
}
