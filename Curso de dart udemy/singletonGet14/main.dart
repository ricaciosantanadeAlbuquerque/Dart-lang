import 'pessoa_get.dart';

void main() {
  var objeto1 = PessoaGet.instancia;
  var objeto2 = PessoaGet.instancia;
  objeto1.nome = 'Ana';
  print(objeto1.nome);
  print(objeto2.nome);
  // Duas variáveis diferentes que apontam para o mesmo objeto

  // Como a classe está encapsulada, nós não temos acesso direto ao atribulto da classe.
  // Porém! Obtemos o valor através  de um método get ou propriedade get, que por sua vez é static e pode retornar atribultos static;
}
