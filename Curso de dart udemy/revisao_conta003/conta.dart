import 'dart:math';

class Conta {
  String nome = 'Fernando';
  int numeroConta = Random().nextInt(10000 + 1);
  double saldo = 0.0;

  double consultarSaldo() => this.saldo;

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 1;

  void calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
    print("Salário: $salarioCalculado, Bonus:$bonus, faltas:$faltas \n");
  }

  void depositar(double depositar) {
    this.saldo += depositar; // this.saldo = this.saldo + depositar;
    print("Deposito:$depositar, Saldo:${this.saldo}\n");
  }

  void sacar(double sacar) {
    this.saldo -= sacar; // this.saldo = this.saldo - sacar;
    print('Saque:$sacar,  Saldo: ${this.saldo}\n');
  }
}
