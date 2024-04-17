import 'venda.dart';

class Vendedor{
  String? nome;
  List<Venda>? litsVenda;

  Vendedor({required this.nome,required this.litsVenda});

  @override
  String toString() => 'Nome:$nome, Vendas:${litsVenda}';
}