class Multa{
  String? descricao,tipo;
  int? pontos;
  Multa({required this.descricao,required this.tipo,required this.pontos});

  @override
  String toString() => 'descrição:$descricao, tipo:$tipo, pontos:$pontos';
}