import 'pessoas.dart';

void main() {
  Pessoas pessoa1 = new Pessoas();
  pessoa1.nome = "ricacio";
  pessoa1.idade = 28;
  pessoa1.endereco = ' Rua manoel arruda cavalcante 84 bairro manaira joão pessoa Paraíba';
  pessoa1.telefone = 987874721;
  pessoa1.salario = 1516;
  pessoa1.tipoTrabalho = 'Porteiro noturno';
  pessoa1.infor();
  print(pessoa1.consultarSalario());
  print("======================================================================================");
  pessoa1.alterarCadastro(nome: "Ricacio Santana");
  pessoa1.modificarSalario(3000);
  pessoa1.infor();
}
