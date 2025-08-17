/**
 * Estado válido de objeto
   Crie uma classe Carro com velocidade e ligado. No construtor, 
   use assert() para garantir que se o carro está desligado, a velocidade é zero.
 */

class Carro {
  double? _velocidade;
  bool? _ligado;

  factory Carro({required double velocidade, required bool ligado}) {
     if(ligado == false){
      assert(
      ligado == false && velocidade == 0, 'Se está desligado a velocidade deve ser 0'
    ); // se desligado, então velocidade igual a zero.
     }
    return Carro._esportivo(velocidade: velocidade, ligado: ligado);
  }

  Carro._esportivo({required double velocidade, required bool ligado}) {
    if (ligado == true) {
      assert(velocidade <= 200, 'A velocidade não pode ser maior que 200');
    }
    setLigado = ligado;
    setVelocidade = velocidade;
  }

  double get getVelocidade {
    return this._velocidade ?? 0;
  }

  void set setVelocidade(double velocidade) {
    this._velocidade = velocidade;
  }

  bool get getLigado {
    return this._ligado ?? false;
  }

  void set setLigado(bool ligado) {
    this._ligado = ligado;
  }

  // O estado do objeto
  @override
  String toString() {
    return 'Carro: Ligado:${_ligado}, Velocidade:${_velocidade}';
  }
}
