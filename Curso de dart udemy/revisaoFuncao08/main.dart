void main() {
  funcaoArrow();
}

///
///Funções Arrow tem o retorno implicito !
void funcaoArrow() {
  String conceito() => '\n Funções Arrow tem  o retorno implicito \n';

  String somarValores(int valorA, int valorB) => "Somar: $valorA + $valorB = ${valorA + valorB} \n";

  String verificarMaiorIdade({required String nome, required int idade}) => (idade >= 18) ? " \n $nome é maior de idade\n" : "\n $nome não é maior de idade \n ";

  String calcularAreaCirculo(double raio) => 'Area do circulo : ${3.14 * raio * raio} \n';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 1; // nada foi descontado !

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print("Empregado: $nome, salário: $total ");
  }

  print(conceito());
  print(somarValores(10, 20));
  print(verificarMaiorIdade(nome: "Lucas", idade: 27));
  print(calcularAreaCirculo(2.2));
  calcularSalario("lucas", 900, 100, 0);
}
