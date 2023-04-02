class Veiculo {
  int velocidade = 0;
  bool? status;

  Veiculo(int? velocidade, bool? status) {
    this.velocidade = (velocidade != null) ? velocidade : 0;
    this.status = (status != null) ? status : false;
    print("Instância da classe ${this.status.toString()}");
  }

  void ligar() {
    if (this.status == false) {
      // é porque está desligado !

      this.status = true;
    }
  }

  void desligar() {
    if (this.status == true) {
      // então pode desligar false
      this.status = false;
    }
  }

  void acelerar() {
    if (this.status == true) {
      print("O carro está acelerando! ");
      this.velocidade += 20;
    } else {
      print("Para acelerar o carro deve está ligado !");
      print("LIGUE O CARRO !");
    }
  }

  void mostrandoStatus() {
    print("Velocidade: $velocidade Ligado: $status");
  }
}
