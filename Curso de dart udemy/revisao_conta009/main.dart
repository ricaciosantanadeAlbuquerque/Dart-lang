import 'conta.dart';

void main() {
  var conta = Conta('Lucas');

  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 500
    ..saque = 500;

  print('');

  conta
    ..limite = 700
    ..alteraLimite = true
    ..limite = 1000
    ..alteraLimite = false;

  print('');

  conta
    ..saque = 950
    ..saque = 350;
  print(conta.informacao);
}
