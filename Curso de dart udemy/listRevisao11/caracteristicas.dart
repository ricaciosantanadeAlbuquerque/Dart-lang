class Caracteristicas{ 
  String? tipo;
  int? passageiros;
  int? potencia;
  String? combustivel;
  Caracteristicas({required this.tipo,required this.passageiros,required this.potencia,required this.combustivel});
  
  @override
  String toString() => 'Tipo:$tipo, passageiros:$passageiros, potencia:$potencia, combustivel:$combustivel';
}