class CarroFactory {
  static CarroFactory? _instancia;
  String? _modelo;
  bool _ligado = false;

  factory CarroFactory({String? modelo}) {
    modelo = (modelo != null) ? modelo : 'Indefinido';
    return _instancia ??= new CarroFactory._construtorNomeado(modelo);
  }

  CarroFactory._construtorNomeado(this._modelo);

  String? get modelo => this._modelo;

  bool get ligado => this._ligado;

  void set ligado(bool ligado) {
    this._ligado = ligado;
  }
}
