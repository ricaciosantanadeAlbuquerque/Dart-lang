import 'conta.dart';

void main() {
  var conta = new Conta("Ana");
  conta.depositar = 900;
  conta.depositar = 400;
  conta.saque = 400;
  // operador  em cascata
  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000;

  conta
    ..saque = 1200
    ..saque = 1000
    ..saque = 900;

  print(conta.saldo);
  // conta vip

  Conta contaVip = new Conta.vip("Lucas", limite: 120000);

  contaVip.depositar = 150000;
  contaVip.saque = 150000;
  contaVip.limite = 150000;
  contaVip.saque = 150000;
}
