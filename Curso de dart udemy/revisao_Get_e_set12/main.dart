import 'cadastro.dart';

void main() {
  Cadastro cadastro = new Cadastro();

  cadastro.cadastrar(nome: "Ana", idade: 33, nota1: 7.7, nota2: 8.0, nota3: 8.3, nota4: 10.0);
  cadastro.listarAlunos();
  cadastro.calcularMedia();
  cadastro.maiorNota();
  cadastro.menorNota();
  cadastro.lista[0].nome = "Lucas";
  cadastro.listarAlunos();
  //print(cadastro.lista[0].nome);
  print("");
  print("");
  cadastro.cadastrar(nome: "Dora", idade: 52, nota1: 10.0, nota2: 8.0, nota3: 9.0, nota4: 9.0);
  cadastro.listarAlunos();
  print("");
  cadastro.calcularMedia();
}
