import 'pessoa.dart';

void main() {
  var pessoa1 = Pessoa.instancia;
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
}
