import 'conta.dart';

void main() {
  Conta p1 = Conta();
  print("Nome ${p1.nome}, Número da Conta ${p1.numeroConta}, saldo: ${p1.saldo}");
  p1.calcularSalario(1516, 100, 2);
  p1.depositar(3000);
  p1.sacar(sacar: 2000);

  print("============================================================================================================================");

  Conta p2 = Conta();
  p2.nome = "Ana";
  print("Nome: ${p2.nome}, Número da conta: ${p2.numeroConta}, Saldo: ${p2.saldo}");
  p2.calcularSalario(3000, 300, 1);
  p2.depositar(1500);
  print(p2.consultarSaldo());
  p2.sacar(sacar: 4000);
}
/**
 * Mesmo sendo objetos da mesma classe 'Conta()' cada instância, possui valores diferentes nos seus atribultos. 
 */