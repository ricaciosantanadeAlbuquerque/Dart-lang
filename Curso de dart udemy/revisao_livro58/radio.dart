class RadioCarro {
  final String fabricante;
  final String sintonia;
  bool? _tocando;

  RadioCarro({required this.fabricante, required this.sintonia}) {
    this._tocando = false;
  }

  bool? get tocando => this._tocando;

  void set tocando(bool? tocando) {
    this._tocando = tocando;
  }

  @override
  String toString() {
    return 'Fabricante:$fabricante, sintonia:$sintonia, Ligado:${(tocando!) ? 'sim' : 'Nao'}';
  }
}
