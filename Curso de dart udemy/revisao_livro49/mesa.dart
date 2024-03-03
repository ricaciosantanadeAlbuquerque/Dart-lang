class Mesa {
  final String marca;
  final String comprimento;
  final String qtdCadeiras;

  const Mesa(this.marca, this.comprimento, this.qtdCadeiras);

  @override
  String toString() => 'Marca:$marca, Comprimento: $comprimento, Quantidade de Cadeiras: $qtdCadeiras';
}
