void main() {
  funcaoArrow();
}

/// funções Arrow tem o retorno emplicito!
void funcaoArrow() {
  String conceito() => '\nFunção Arrow com retorno implicito\n';

  String somarValores(int valorA, int valorB) => " A soma de $valorA   + $valorB = ${valorA + valorB} ";

  String verificarMaiorIdade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade ! ' : '$nome não é maior de idade !';

  String calcularAreadocirculo(double raio) => 'Area do circulo é ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 1;

  void calcularSalario({required String nome, required double salario, required double bonus, required int faltas}) {
    var total = (salario * desconto(faltas)) + bonus;
    print("Empregado: $nome salario: $total");
  }

  var texto = conceito();
  print(texto);
  print(somarValores(20, 30));
  print(verificarMaiorIdade('Lucas', 34));
  print(calcularAreadocirculo(2));
  print(desconto(2));
}
