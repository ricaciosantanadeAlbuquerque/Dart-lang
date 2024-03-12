class Motor {

  final String cv;
  final int potencia;
  final String fabricante;

  Motor({required this.cv, required this.potencia, required this.fabricante});

  @override
  String toString() => 'CV:$cv, potencia:$potencia, fabricante:$fabricante';
  
}
