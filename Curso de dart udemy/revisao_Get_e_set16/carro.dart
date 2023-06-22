class Carro {
  // altribultos de classe ou  variaveis de classe
  String? _fabricante;
  String? _modelo;
  double? _velocidade;
  bool? _ligado = false;
  // construtor padrão
  Carro({
    String? fabricante,
    String? modelo,
    double velocidade = 200,
  }) {
    this._fabricante = (fabricante != null) ? fabricante : 'indefinido';
    this._modelo = (modelo != null) ? modelo : 'indifinido';
    this._velocidade = velocidade;
    print("Carro:${this._modelo}, ${this.toString()}");
  }
  // construtor nomeado
  Carro.ferrari(
    this._fabricante,
    this._modelo, {
    double velocidade = 1000,
  }) {
    this._fabricante = (_fabricante != null) ? _fabricante : 'indefinido';
    this._modelo = (_modelo != null) ? _modelo : 'indefinido';
    this._velocidade = velocidade;
    print("Carro:${this._modelo}, ${this.toString()}");
  }
// get and set

  String get fabricante => this._fabricante!; // neste caso eu já sei que não será null porque estou tratando o valor  por isso poss usar !
  void set fabricante(String fabricante) {
    this._fabricante = fabricante;
  }

  String get modelo => this._modelo!;

  void set modelo(String modelo) {
    this._modelo = modelo;
  }

  double get velocidade => this._velocidade!;

  void set velocidade(double velocidade) {
    this._velocidade = velocidade;
  }

  bool get ligado => this._ligado!;

  void set ligado(bool ligado) {
    this._ligado = ligado;
  }
}
