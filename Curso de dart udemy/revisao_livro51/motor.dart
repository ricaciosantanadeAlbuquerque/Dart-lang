class Motor {
  final int cilindradas;
  final int cava;
  final double potencia;

  const Motor({required this.cilindradas, required this.cava, required this.potencia});
  
  @override
  String toString() => ' Cilindrada:$cilindradas, Cavalos:$cava, Potência:$potencia ';
}
