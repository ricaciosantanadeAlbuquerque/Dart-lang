import 'venda.dart';

class Vendedor {
  String? nome;
  List<Venda>? listVenda;

  Vendedor({this.nome, this.listVenda});

  @override
  String toString() {
    return 'Nome:$nome, Vendas:$listVenda';
  }
}
