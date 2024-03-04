class RadioCarro {
  final String marca;
  final double canal;

  const RadioCarro({required this.canal, required this.marca});
  
  @override
  String toString() => ' Marca:$marca, Canal:$canal ';
}
