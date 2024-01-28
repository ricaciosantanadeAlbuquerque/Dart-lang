void funcaoArrow() {
  String conceito() => 'Funções Arrow com retorno  implícito';

  String somarValores(int valorA, int valorB) => 'A soma de $valorA + $valorB = ${valorA + valorB}';

  String verificarMaiorIdade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade' : '$nome não é maior de idade';

  String calcularAreaCirculo(double raio) => 'A área do circulo é ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 1;

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado:$nome, Salário:$total');
  }

  print(conceito());
  print(somarValores(25, 25));
  print(verificarMaiorIdade('Ricacio', 28));
  print(calcularAreaCirculo(2));
  calcularSalario('Ricacio', 1668, 100, 2);
  calcularSalario('Ricacio', 1668, 100, 1);
}

void main() {
  funcaoArrow();
}
