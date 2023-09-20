import 'mamifero.dart';

class Canguru extends Mamifero {
  void usarBolsa() {
    print('Usando a Bolsa');
  }

  // Polimorfismo de sobreposição! Neste caso diferente dos métodos abstratos da classe abstratas, esta sobreposição não é obrigatória;
  @override
  void locomover() {
    print("Saltando");
  }
}
