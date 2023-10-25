class RadioCarro {
  final String tipo;
  final String fabricante;
  bool? _tocando = false;

  RadioCarro({required this.tipo, required this.fabricante});

  bool? get tocando => this._tocando;

  void set tocando(bool? tocando) {
    this._tocando = tocando;
  }

  void ligar() {
    this.tocando = true;
  }

  void desligar() {
    this.tocando = false;
  }
  
  @override
  String toString() => 'Tipo: $tipo, fabricante: $fabricante, Tocando: ${(this._tocando == true) ? 'Sim' : 'Não'}';
}
