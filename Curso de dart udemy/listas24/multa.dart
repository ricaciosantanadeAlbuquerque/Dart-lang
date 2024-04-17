class Multa{
  String? descricao,tipo;
  int? pontos;

  Multa({required this.descricao,required this.pontos,required this.tipo});
  
  @override
  String toString() => 'Descrição:$descricao, tipo:$tipo, pontos:$pontos';
}