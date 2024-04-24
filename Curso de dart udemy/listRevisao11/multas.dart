class Multas{
  String? descricao,tipo;
  double? pontos;
  Multas({required this.descricao,required this.tipo,required this.pontos});

  @override
  String toString() => 'Descrição:$descricao, Tipo:$tipo, Pontos:$pontos';
}