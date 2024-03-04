class Mesa {
  final String marca;
  final String modelo;
  final int tamanho;

  const Mesa({required this.marca, required this.modelo, required this.tamanho});

  @override
  String toString() {
    return 'Marca:$marca, Modelo:$modelo, Tamanho: $tamanho';
  }
}
