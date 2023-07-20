import 'cliente.dart';
import 'fornecedor.dart';
import 'interface.dart';
import 'produto.dart';

void main() {
  //var dao = Dao(); classes abstratas não podem ser instanciadas

  var produto = new Produto(1, 'Camisa');
  var cliente = Cliente(007, 'Lucas');
  var fornecedor = Fornecedor('106-888-9520', '000-354-77');
  produto.localizar();
  cliente.localizar();
  fornecedor.localizar();

  print('===============================================================');
  print('');
  produto
    ..baixar()
    ..inserir()
    ..localizar()
    ..excluir();

  print('===============================================================');
  print('');

  cliente
    ..inserir()
    ..localizar()
    ..excluir()
    ..localizar();

  print('===============================================================');
  print('');

  fornecedor
    ..inserir()
    ..localizar()
    ..excluir()
    ..localizar();

  print(identical(cliente, produto));
  print(cliente.runtimeType);
}
