import 'dart:math';

class Conta {
  // Atribultos da classe
  String nome = "Fernado";
  int numeroConta = new Random().nextInt(1000) + 1;
  double saldo = 0;

  // métodos

  double consultarSaldo() => this.saldo;

// uso dos ternários
  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 1; // todo numero multiplicado por 1 é ele mesmo.

  void calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
    print("Salário: $salarioCalculado, Bonus: $bonus, faltas: $faltas");
  }

  void depositar(double valor) {
    // this.saldo += valor;
    this.saldo = this.saldo + valor;
    print("Saldo: $saldo, deposito: $valor");
  }

  void sacar({required double sacar}) {
    this.saldo -= sacar; // o resultado da operação será guardado em saldo ocorrendo uma sobreposição do valor anterior
    print("Saldo: $saldo, saque: $sacar ");
  }
}
