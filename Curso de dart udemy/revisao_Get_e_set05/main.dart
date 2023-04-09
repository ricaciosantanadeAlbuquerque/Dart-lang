import 'conta.dart';

void main() {
  Conta conta = Conta('Ana');
  print(conta.informacao);
  conta.depositar = 1697;
  conta.saque = 780;
  conta
    ..alterarLimite = true // permissão para alterar limite sim
    ..limite = 1000 // alterar limite de saque para 1000;
    ..saque = 800;
  print('======================================================================');
  var contaVip = Conta.vip("Lucas", limite: 15000); // linha de instânciamento
  var informacao = contaVip.informacao;
  print(informacao);
  contaVip.depositar = 20000;
  contaVip
    ..saque = 18000
    ..limite = 20000
    ..saque = 18000;
}
