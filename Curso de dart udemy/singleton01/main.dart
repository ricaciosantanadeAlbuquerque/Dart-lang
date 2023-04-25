import 'pessoa.dart';

void main() {
  // instancia é um atribulto static, por isso pode ser acessado diretamente pela classe Pessoa
  var pessoa1 = Pessoa.instancia; // não estamos criando uma nova intância, so puchando essa instância da classe pessoa
  pessoa1.nome = "Lucas";

  var pessoa2 = Pessoa.instancia;

  print(pessoa1.nome);
  print(pessoa2.nome);

  Pessoa pessoa3 = Pessoa.instancia;
  pessoa3.nome = "ana";

  print(pessoa1.nome);
  print(pessoa2.nome);
  // ERRO ! Pessoa p = Pessoa(); não é possível instanciar !!!
  /**
   * Não estamos criando novas instâncias para cada variável, mas passando a mesma instância 'instância única'da classe pessoa para cada variável de mode que tanto pessoa1 quanto pessoa2 apontão  para o mesmo objeto. 
   */

  Pessoa jj = Pessoa.instancia;
  print(jj.nome);
}
