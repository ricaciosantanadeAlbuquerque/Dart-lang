void funcaoArrow() {
  String conceito() => 'Funções Arrow com retorno implicito';

  String somarValores(int valorA, int valorB) => 'soma: $valorA + $valorB = ${valorA + valorB}';
  
  String verificarMaiorIdade(String nome, int idade) => (idade >= 18) ? '$nome é maior de idade' : '$nome não é maior de idade';
  String calcularAreaCirculo(int raio) => 'Área do circulo: ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 1;

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var totla = (salario * desconto(faltas)) + bonus;

    print('Empregado: $nome salário: ${totla}');
  }

  print(conceito());
  print(somarValores(20, 27));
  print(verificarMaiorIdade('Lucas', 52));
  print(calcularAreaCirculo(12));
  print(desconto(43));
  calcularSalario('Ricacio Santana', 1602, 100, 5);
}

void main() {
  funcaoArrow();
}
