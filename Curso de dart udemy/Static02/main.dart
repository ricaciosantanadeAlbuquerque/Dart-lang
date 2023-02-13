import 'Pessoa.dart';

void main() {
  Pessoa p1 = new Pessoa("Ana", 1.67, "feminino");
  p1.setNome = "Lucia";
  print(p1.toString());
  // para que lucia possa ter uma idade, vamos utilizar a classe para acessar os métodos e atribultos static
  Pessoa.idade = 25;
  print(p1.toString());

  print("Parabéns pelo seu aniversário, sua idade é ${Pessoa.fazerAniversario()} anos");

  var p2 = Pessoa.diferente("ricacio", 1.72, "Masculino");
  print(p2.toString());
  // como visto  Idade é um atribulto de classe e não de instancia, pode haver N objetos, porém o valor da idade será a mesma.

  print("Parabéns pelo seu aniversário, sua idade é ${Pessoa.fazerAniversario()} anos");

  // função identical para comparar objetos

  if (identical(p1, p2)) {
    print("Sim eles são iguais !");
  } else {
    print("Não eles não sao iguais !");
  }
}
