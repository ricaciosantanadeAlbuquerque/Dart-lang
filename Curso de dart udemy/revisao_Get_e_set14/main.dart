import 'conta.dart';

void main() {
  Conta conta = Conta('Ana');
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;
  print('');
  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000
    ..alterarLimite = false;

  print('');

  conta
    ..saque = 950
    ..saque = 850;
  print('${conta.informacao}');
  //================================================================
  Conta contaVip = Conta.vip('Fernando', limite: 12500);

  contaVip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque = 15000;
  print(contaVip.informacao);
}
