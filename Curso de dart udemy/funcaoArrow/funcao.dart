void funcaoFlecha() {
  String conceito() => " função com o retorno implicito.";

  // =========== somando valores ============================

  String somandoValores(int valorA, int valorB) => "\nA soma do $valorA e do $valorB é ${valorA + valorB}\n";

  // ============ verificadon idade ==================================================================

  String verificarIdade(String nome, int idade) => (idade >= 18) ? "$nome é maior de idade " : "$nome não é maior de idade ";
 // ============= calculo da área do circulo ===========================================================
  String calculodaAreadoCirculo(int raio) => "A area do circulo é  ${3.14 * raio * raio}";
// ============== desconto =============================================================================
  double desconto(int faltas) => (faltas > 1) ? 0.8 :(faltas == 1) ? 0.9 : 0;

 void salarioDesconto(String nome, double salario, double bonus, int faltas){
  var  total = (salario * desconto(faltas)) + bonus;
  print("\nEmpregado: $nome, salário $total\n");
}
 // ============== chamadas ========================================
  print(conceito());
  print(somandoValores(20, 30));
  print(verificarIdade("Lucas", 13));
  print(calculodaAreadoCirculo(22));
  salarioDesconto("Lucas",1636,100,2);
}

void main(List<String> args) {
  funcaoFlecha();
}
