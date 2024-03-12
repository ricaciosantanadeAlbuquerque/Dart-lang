class Mesa {
  final String modelo;
  final String tamanho;

   const Mesa({required this.modelo, required this.tamanho});

  @override
  String toString() => 'Modelo:$modelo, Tamanho:$tamanho';
}
