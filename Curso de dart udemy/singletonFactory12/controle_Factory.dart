import 'dart:math';

class ControleFactory {
  static ControleFactory? instancia; // deve set static para ser usado dentro do construtor factory
  bool? ligado;
  double? volume;

  factory ControleFactory({bool? ligar, double? volume}) {
    return instancia ??= ControleFactory._nomeado(ligar: ligar!, volume: volume);
  }

  ControleFactory._nomeado({required bool? ligar, required double? volume}) {
    this.ligado = (ligar != null) ? (ligar == true) ? ligar : false : false;
    this.volume = (volume != null) ? volume : Random().nextInt(100) + 1;
  }
}
