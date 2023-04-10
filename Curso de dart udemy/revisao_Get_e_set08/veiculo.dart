class Veiculo {
  int _velocidade = 0;
  bool _status = false;

  Veiculo({required bool status, required int velocidade}) {
    this._status = status;
    this._velocidade = velocidade;
  }

  // get ande set
  int get velocidade => this._velocidade;

  void set velocidade(int velocidade) {
    this._velocidade = velocidade;
  }

  bool get status => this._status;

  void set status(bool status) {
    this._status = status;
  }

  // método =================

  void ligar(bool ligar) {
    this.status = ligar;
    print((this.status == true) ? 'Carro ligado com sucesso ! ' : 'Não foi ligado ');
  }

  void desligar(bool desligar) {
    this.status = desligar;
    print((this.status == true) ? 'Carro delisgado ! ' : 'Está ligado ');
  }

  void mostrarStatus() {
    if (this.status == true) {
      print('carro ligado');
      print("Velocidade: ${this._velocidade}");
    } else {
      print("desligado");
      print("Velocidade: ${this._velocidade}");
    }
  }

  void acelerar() {
    if (this.status) {
      this._velocidade += 10;
    }
  }

  void reduzir() {
    if (this.status) {
      if (this.velocidade > 0) {
        this.velocidade = this.velocidade - 10;
      }
    }
  }
}
