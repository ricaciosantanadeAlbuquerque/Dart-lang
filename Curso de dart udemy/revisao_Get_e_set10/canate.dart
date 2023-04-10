class Caneta {
  String _modelo;
  double _ponta;
  String _cor;
  bool _tampada = false;

  Caneta(this._cor, this._modelo, this._ponta, this._tampada) {
   
  }
  // get and set
  String get modelo => this._modelo;

  void set modelo(String modelo) {
    this._modelo = modelo;
  }

  double get ponta => this._ponta;

  void set ponta(double ponta) {
    this._ponta = ponta;
  }

  String get cor => this._cor;

  void set cor(String cor) {
    this._cor = cor;
  }

  bool get tampada => this._tampada;

  void set tampada(bool tampada) {
    this._tampada = tampada;
  }

  // metodos

  void tampar() {
    if (this.tampada == false) {
      // get
      this.tampada = true; // set
    } else {
      print("A  caneta já está tampada ! ");
    }
  }

  void destampar() {
    if (this.tampada == true) {
      this.tampada = false;
    } else {
      print(" A caneta já está  destampada !");
    }
  }

  void escrever() {
    if (this.tampada == false) {
      print(" Escrevendo !");
    } else {
      print("não pode escreve pois a caneta está tampada ");
    }
  }

  void trocarCor(String cor) {
    this.cor = cor;
  }

  @override
  String toString() {
    return 'Modelo:${this.modelo}, Ponta: ${this.ponta}, Cor: ${this.cor}, tampada: ${tampada}';
  }
}
