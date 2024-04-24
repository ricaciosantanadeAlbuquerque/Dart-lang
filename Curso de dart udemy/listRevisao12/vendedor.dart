import 'venda.dart';

class Vendedor{
  String? nome;
  List<Venda>? listVenda;

  Vendedor({required this.nome,required this.listVenda});

  String toString() => 'Nome: $nome, vendas ${listVenda}';
}