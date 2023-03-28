class Circulo {
  double raio = 0.0;
  double area = 0.0;
  double perimetro = 0.0;

  Circulo({double? raio}) {
    // construtor
    this.raio = (raio != null) ? raio : this.raio;
  }

  void calcularArea() {
    var area = 3.14 * raio * raio; // var area  variável de escopo local {}
    this.area = area; // this.area atribulto de classe
    print("A Área do circulo é ${this.area}");
  }

  void calcularPerimetro() {
    var perimetro = 3.14 * 3.14 * this.raio;
    this.perimetro = perimetro;
    print("O Perímetro  ${this.perimetro}");
  }
}
