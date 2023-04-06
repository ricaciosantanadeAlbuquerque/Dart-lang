import 'conta.dart';

void main() {
  // operador em cascata .. permite ao objeto conta evocar vários métodos e atribultos em sequencia
  Conta conta = Conta(nome: "Ana");
  conta
    ..deposito = 1000
    ..deposito = 900
    ..saque = 900
    ..saque = 900;
  print('==================================================================================================');
  var conta2 = Conta(nome: 'Bia');
  conta2
    ..deposito = 1000
    ..deposito = 900
    ..alterarLimite = true
    ..limite = 1200
    ..saque = 1200;
  print('===================================================================================================');
  var conta3 = Conta.vip('Lucas');
  print(conta3.informacao);
  conta3
    ..deposito = 3000
    ..deposito = 5000
    ..saque = 5000;
  print(conta3.informacao);
  print('===================================================================================================');
  Conta conta4 = Conta.vip('Ricacio',limite: 15000);
  conta4
    ..deposito = 20000;
  conta4.saque = 15000;
}
