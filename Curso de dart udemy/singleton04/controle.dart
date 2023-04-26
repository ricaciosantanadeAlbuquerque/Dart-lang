class Controle {
  static final Controle _instancia = Controle._remoto();
  bool _ligado = false;

  Controle._remoto(); // construtor nomeado e privado

  static Controle get instancia {
    return _instancia;
  }

  void ligar() {
    this._ligado = true;
  }

  void desligar() {
    this._ligado = false;
  }
}
