import 'veiculo.dart';

class Automovel extends Veiculo {
  @override
  void acelerar() {
    super.acelerar();
    print("como um carro ");
  }

  /**
   * Quando estendemos uma classe, ganhamos dela, ou herdamos, todos os métodos e atributos que ela possui.
   * por isso se diz; Automovel() é um veiculo().
   * Lembrando que classes abstratas não podem ser instanciadas, servido neste caso como classe modelo.
   */
}
