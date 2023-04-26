import 'professor.dart';

void main() {
  Professor.instancia.nome = "joão";
  Professor.instancia.salario = 15000;

  var dados = Professor.instancia;
  print("Nome: ${dados.nome}  salario: ${dados.salario}");

// Professor.instancia
// a única coisa que fica visível a classe "Professor" é a própriedade (get instancia).
}
