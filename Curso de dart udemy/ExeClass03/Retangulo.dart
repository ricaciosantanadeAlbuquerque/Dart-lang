class Retangulo {
  double lado1 = 0;
  double lado2 = 0;
  double area = 0;
  double perimetro = 0;

  void dados({required double base, required double altura}) {
    this.lado1 = base; // passando os valores para os atribultos da classe
    this.lado2 = altura;
  }

  void calcularArea() {
    var area = this.lado1 * this.lado2;

    print("A área de um retângulo é ${area}");
  }

  void perimetroRetangulo() {
    this.perimetro = (2 * this.lado1 + 2 * this.lado2);
    print("O perimetro do retangulo é  ${perimetro}");
  }
}
