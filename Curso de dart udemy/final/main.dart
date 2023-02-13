import 'pessoa.dart';

void main() {
  var pessoa1 = new Pessoa("Lucas", ["Carmem", "Ana"]); // criamos  uma instância da calsse pessoa
  pessoa1.setNome = "ricacio";
  //pessoa1.familiares = ["a", "b"];
  /**
   * Não é possível alterar o valor de uma variável final 
   */

  print("Nome: ${pessoa1.getNome} Familiáres: ${pessoa1.getFamiliares}");
}
