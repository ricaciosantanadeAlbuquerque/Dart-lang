class Multas{
  String? descricao,tipo;
  int? pontos;

  Multas({required this.descricao,required this.tipo,required this.pontos});

  @override
  String toString() => 'Descrição:$descricao, tipo:$tipo, pontos:$pontos';
}