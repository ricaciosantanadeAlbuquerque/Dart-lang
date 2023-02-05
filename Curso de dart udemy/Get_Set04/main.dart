import 'Aluno.dart';

void main() {
  Aluno p1 = Aluno(
    nome: "Ana",
    idade: 22,
    matricula: 333,
  );
  print(p1.informacao);
  p1.calcularMeida(num1: 10, num2: 10, num3: 10);
  p1.pagarMensalidade();
// criando um objeto com o construtor nomeado =========================================

  Aluno p2 = new Aluno.bolsita(nome: "Ricardo", idade: 33, matricula: 73, bolsa: true);
  print(p2.informacao); // get
  p2.calcularMeida(num1: 10, num2: 7.7, num3: 9.7);
  print(p2.informacao);
  p2.pagarMensalidade();
}
