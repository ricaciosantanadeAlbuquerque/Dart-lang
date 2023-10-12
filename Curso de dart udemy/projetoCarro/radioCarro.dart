class Radiocarro {
  bool tocando = false;
  String marca = 'Não definida';

  Radiocarro({required this.tocando, required this.marca});

  void tocar() {
    print("Tocando $tocando");
  }
}
