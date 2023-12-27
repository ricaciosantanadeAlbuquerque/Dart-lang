import 'pessoa_instancia.dart';

void main() {
  executar();
}

void executar() {
  var p1 = new PessoaInstancia(identidade: 7777, nome: 'João');

  print("Nome: ${p1.nome}, ${p1.identidade}");

  var p2 = PessoaInstancia.instancia;

  print('Nome: ${p2!.nome}, Identidade ${p2.identidade}');

  print('');
  print(identical(p1, p2));
}
