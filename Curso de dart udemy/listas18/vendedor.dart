import 'venda.dart';

class Vendedor {
  String? nome;
  List<Venda> listVenda = [];
  Vendedor({required this.nome, required this.listVenda});

  @override
  String toString() => 'Nome:$nome, Vendedor:$listVenda';
}
