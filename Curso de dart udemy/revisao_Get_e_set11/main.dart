import 'Conta_banco.dart';

void main() {
  ContaBanco c1 = ContaBanco(dono: "Ana");
  print(c1.toString());
  // ===========================================================
  print("==============================================");
  c1.numeroConta = 1111;
  c1.abrirConta('cc');
  print(c1.toString());
  c1.depositar(500);
  c1.sacar(350);
  print("");
  c1.sacar(1200);
  print("");
  c1.fecharConta();
  c1.pagarTaxa();
  c1.sacar(188);
  c1.fecharConta();
  //=========================================================
  print("=================================================");
  //=========================================================

  ContaBanco c2 = new ContaBanco(dono: "Lucas");
  c2.numeroConta = 3333;
  c2.abrirConta('cp');
  c2.toString();
  c2.depositar(1697);
  c2.depositar(10000);
  c2.fecharConta();
  c2.sacar(7500);
  c2.pagarTaxa();
  c2.toString();
}
