class Retangulo {
  late String largura;
  late String altura;

  Retangulo({required String largura, required String altura}) {
    assert(
      int.parse(largura) > 0 && int.parse(altura) > 0,
      'ERRO !!! Valo iguais a 0 ou negativos.',
    );

    this.largura = largura;
    this.altura = altura;
  }

  String area() => (int.parse(largura) * int.parse(altura)).toString();
}
