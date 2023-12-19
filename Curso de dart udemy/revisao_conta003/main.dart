import 'conta.dart';

void main() {
  var conta = Conta(); // linha de instanciamento / objeto

  print("\nNome:${conta.nome}, Numero da conta:${conta.numeroConta}, Faltas: ${conta.consultarSaldo()}\n");

  //conta.depositar(1653);

  //print("Saldo:${conta.consultarSaldo()}\n");

  conta.calcularSalario(1653, 100, 1);

  conta.depositar(2000);

  print("Saldo:${conta.consultarSaldo()}\n");
  conta.sacar(780);
}
