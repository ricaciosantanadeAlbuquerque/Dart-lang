 class Mesa {
  final int numeroMesa;
  final String fabricante;

  const Mesa({required this.fabricante, required this.numeroMesa});

  @override
  String toString() {
    return 'Numero da mesa:$numeroMesa, Fabricante:$fabricante';
  }
}
