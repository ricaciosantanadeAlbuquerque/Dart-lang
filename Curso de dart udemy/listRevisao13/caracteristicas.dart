class Caracteristicas{
  String? tipo;
  int? passageiro;
  int? potencia;
  String? combustivel;
  Caracteristicas({required this.tipo,required this.passageiro,required this.potencia,required this.combustivel});

 @override
  String toString() => 'Tipo:$tipo, Passageiros:$passageiro, potencia:$potencia, combustivel:$combustivel';
}