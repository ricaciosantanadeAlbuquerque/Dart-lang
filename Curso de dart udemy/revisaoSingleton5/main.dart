import 'pessoa_factory.dart';

void main() {
  var p1 = PessoaFactory();
  p1.nome = 'Lucas';

  var p2 = PessoaFactory();

  print("Nome: ${p2.nome}");
  print(identical(p1, p2));
  /*
   * Ambas as variáveis apontam para a mesma referência na memória, para o mesmo objeto.
   * Pois ao evocar o Construtor, recebemos a mesma instância 
   */
}
