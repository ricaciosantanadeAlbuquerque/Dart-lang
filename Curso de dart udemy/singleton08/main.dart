import 'produto_get.dart';

void main() {
  ProdutoGet.instancia.nomeProduto = "Carro";

  var p2 = ProdutoGet.instancia;

  print(p2.nomeProduto);
  var p3 = ProdutoGet.instancia;
  var p1 = ProdutoGet.instancia;
  var p4 = ProdutoGet.instancia;
  print(p1.nomeProduto);
    print(p3.nomeProduto);
      print(p4.nomeProduto);
     
  /**
   * Estamos acessado o mesmo objeto, não importa quantas vezes eu acesse ou chame a propriedade get, ele sempre retornará o
   *  mesmo objeto singleton. 
   * E está é a finalidade deste padrão 
   */
}
