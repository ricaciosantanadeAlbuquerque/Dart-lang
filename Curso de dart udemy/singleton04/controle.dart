class Controle {
  static final Controle _instancia = Controle._remoto();
  bool _ligado = false;

  Controle._remoto(); // construtor nomeado e privado

  static Controle get instancia {
    return _instancia;
  }

  bool get ligado => this._ligado;

  void set ligado(bool ligado) {
    this._ligado = ligado;
  }

  void ligar() {
    this.ligado = true;
  }

  void desligar() {
    this.ligado = false;
  }

  @override
  String toString() => 'Ligado: ${(this.ligado == true) ? 'Sim' : 'Nao'}';
}
