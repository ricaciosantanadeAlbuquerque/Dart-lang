void main(List<String> args) {
  funcaoArrow(); // chamada a Funcao Arrow
}

///
///Funções Arrow tem o retorno implicito!
void funcaoArrow() {
  String conceito() => "\nFunção Arrow com retorno implicito";

  // só podemos fazer uma chamada a uma função após a sua declaração
  var resultado = conceito();
  print(resultado);

  String somarValor(int valorA, int valorB) => "\nA soma de $valorA  e  $valorB é igual a ${valorA + valorB}";

  print(somarValor(20, 30)); // chamada a função somarValor que terá seu retorno mostrado  pela funcao Print()

  String verificarMaiorIdade(String nome, int idade) => (idade >= 18) ? "\n$nome É maior de idade " : "\n$nome não é maior de idade\n";

  print(verificarMaiorIdade("Matheus", 6));

  String calcularAreacirculo(double raio) => "A área do circulo é: ${3.14 * raio * raio}";

  var x = calcularAreacirculo(4);

  print(x);

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;

    print("\nEmpregado: $nome salário: $total\n");
  }

  calcularSalario("Dora", 1320, 100, 2);
}
