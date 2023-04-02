class Caminhao11 {
  double velocidade = 0;
  String? combustivel;

  Caminhao11() {
    this.velocidade = 0;
    this.combustivel = 'Gasolina';
  }

  void acelerar() {
    if (this.velocidade >= 0 && this.velocidade <= 150) {
      this.velocidade += 20;
    } else {
      print("Não é mais possível acelerar !");
    }
  }

  void reduzir() {
    if (this.velocidade > 0) {
      this.velocidade -= 10;
    }
  }

  void trocarConbustivel(String combustivel) {
    this.combustivel = combustivel;
  }

  String toString() => "Velocidade: $velocidade, Combustível: $combustivel";
}
