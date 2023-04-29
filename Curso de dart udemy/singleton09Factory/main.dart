import 'produto_singleton_Factory.dart';

void main() {
  ProdutoFactory p1 = new ProdutoFactory();
  p1.nomeProduto = "barco";
  ProdutoFactory p2 = new ProdutoFactory();
  print(p2.nomeProduto);

  print("Os objetos são iguais ? ${identical(p1, p2) ? 'SIM' : 'NAO'}");
  print(p1);
  print(p2.runtimeType);

  /**
   *  Estamos retornando o objeto sigleton da classe ProdutoFactory() , e não criando um novo objeto ProdutoFactory.
   *  Isto é possível porque o construtor factory é sempre o primeiro a ser executado eeee neste caso ele está retornando um objeto que  já exsite dentro da classe ProdutoFactory().
   */
}
