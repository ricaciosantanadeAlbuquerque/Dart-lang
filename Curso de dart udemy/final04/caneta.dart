// classe Imutável
class Caneta {
  final String cor;
  final double ponta;
  final int carga;
  final bool tampada;

  static const String modelo = 'Bick';

  const Caneta({required this.cor, required this.ponta, required this.carga, required this.tampada});

  void mostrar() {
    print("Mostrar dados");
    print("Cor: ${this.cor}, cargar: ${this.carga}, ponta: ${this.ponta}, tampada: ${this.tampada}");
  }

  static String mostrarModelo() {
    return modelo;
  }
}
