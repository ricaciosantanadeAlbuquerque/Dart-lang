class Radio {
  final String marca;
  final String sintonia;
  bool tocando = false;

  Radio({required this.marca, required this.sintonia});

  void tocar() {
    this.tocando = true;
  }

  void desligar() {
    this.tocando = false;
  }

  @override
  String toString() => 'Mraca:$marca, Sintonia:$sintonia, tocando: ${tocando ? 'Sim' : 'Nao'}';
}
