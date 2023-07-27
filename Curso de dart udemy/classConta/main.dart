import 'conta.dart';

void main() {
  Conta conta2 = Conta('Joao', 17);
  var conta1 = Conta('Maria', 15); // linha de ins
  var conta3 = Conta('ricacio', 20);
  conta1.abrirConta('CC');
  conta2.abrirConta('CP');
  conta3.abrirConta('CP');

  conta1.depositar(1500);
  conta2.depositar(2000);
  conta3.depositar(3000);
// ================== transferências ====================
  conta2.exibirDados();
  print('\n');

// ================= c1 ============= para c2 ====================

  conta1.transferencia(numeroConta: 17, dono: 'Joao', valor: 1000);
  conta2.exibirDados();

//================== c2 para ====== c3

  conta2.transferencia(numeroConta: 20, dono: 'ricacio', valor: 2000);
  print('\n');
  conta2.exibirDados();

// ================ c3 para =========== c2

  conta3.transferencia(numeroConta: 17, dono: 'Joao', valor: 3000);
  print('\n');
  conta2.exibirDados();

// ================= c1 ============= para c2 ====================

  conta1.transferencia(numeroConta: 17, dono: 'Joao', valor: 500);
// =============== c3 =============== para c2 ====================

  conta3.transferencia(numeroConta: 17, dono: 'Joao', valor: 2100);
  print('\n');
  conta3.exibirDados();

// ============== testando os outros métodos =========================================================================
  conta1
    ..depositar(500)
    ..sacar(50)
    ..pagarMensalidade();

  conta2
    ..depositar(500)
    ..sacar(50)
    ..pagarMensalidade();

  conta3
    ..depositar(500)
    ..sacar(50)
    ..pagarMensalidade();

  print('');
  conta1.exibirDados();

  conta1.sacar(488.0);
  conta2.sacar(7180.0);
  conta3.sacar(480);

  print('');
  conta1.exibirDados();

  conta1.fecharConta();
  conta2.fecharConta();
  conta3.fecharConta();

  print('');
  conta1.exibirDados();
}
