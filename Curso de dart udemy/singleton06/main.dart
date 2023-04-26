import 'pessoaFactory.dart';

void main() {
  PessoaFactory pessoa = PessoaFactory();
  pessoa.nome = "Lucas";

  PessoaFactory pessoa2 = PessoaFactory();

  print(pessoa2.nome);
  /**
   * Tanto pessoa, quanto pessoa2 possuem a mesma  instância.
   * O construtor factory não está criando uma nova instância da classe, mas sim, retornando uma instância única. 
   */

  PessoaFactory.instancia.nome = "Ana"; // acesso feito através do get static 
}
