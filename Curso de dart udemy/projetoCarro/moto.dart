class Motor {
  num power;
  String? fabricante;

  Motor({required this.power, required this.fabricante});

  void potencia() {
    this.power++;
  }

  void reduzir() {
    this.power = 0;
  }
}
