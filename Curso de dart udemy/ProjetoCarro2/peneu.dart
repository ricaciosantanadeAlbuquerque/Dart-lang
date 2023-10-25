class Peneu {
  final String fabricante;
  final num numeroSerial;

  const Peneu({required this.fabricante, required this.numeroSerial});

  @override
  String toString() => 'Fabricante: $fabricante, número serial $numeroSerial';
}
