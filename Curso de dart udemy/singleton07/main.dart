import 'produto.dart';

void main() {
  var produto1 = Produto.instancia.nomeProduto = "Bicicleta";

  var produto2 = Produto.instancia.nomeProduto;

  print(produto2);
  print(Produto.instancia.nomeProduto);
  print(identical(produto1, produto2)); // como as duas variáveis  possuem o mesmo objeto, ela são iguais ' true'
  /**
   * Não estamos criando  novas instâncias da classe Produto(),
   * estasmos alocado o mesmo objeto 'singlton'  que está na classe produto, dentro das variáveis produto1 e produto2
   */
}
