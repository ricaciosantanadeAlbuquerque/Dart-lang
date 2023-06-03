/// funções arrow tem o retorno implicito
void funcaoArrow() {
  String conceito() => '\nfuncções Arrow tem o retorno implicito !\n';

  String somarValor({int valorA = 0, int valorB = 0}) => 'A soma do valor $valorA e $valorB  = ${valorA + valorB}\n';

  String verificarMaiorIdade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade.' : '$nome não é maior de idade.\n';

  String areaCirculo(double raio) => 'A área do circulo é ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 1;

  void calculoSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print("\nSalário:$salario, Bonus:$bonus,faltas:$faltas\n");
    print("Salário final ${total.toStringAsFixed(2)}\n");
  }

  print(conceito());
  print(somarValor(valorA: 12, valorB: 22));
  print(verificarMaiorIdade('Lucas', 22));
  print(areaCirculo(2));
  calculoSalario("Ana", 2355, 250, 0);
  calculoSalario("sojé", 1697, 100, 2);
}

void main() {
  funcaoArrow();
}
