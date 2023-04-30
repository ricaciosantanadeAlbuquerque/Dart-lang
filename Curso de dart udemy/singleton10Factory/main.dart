import 'pessoa_instancia.dart';

void main() {
  PessoaInstancia pessoa1 = new PessoaInstancia(nome: "Lucas", identidade: 745);
  print("Nome: ${pessoa1.nome}, Identidade: ${pessoa1.identidade}");

  PessoaInstancia pessoa2 = PessoaInstancia(nome: "Ana");
  print("Nome: ${pessoa2.nome}, Identidade: ${pessoa2.identidade}");

  // sempre será retornado o mesmo objeto porque instância já possui um objeto alocado dentro dela.
}
