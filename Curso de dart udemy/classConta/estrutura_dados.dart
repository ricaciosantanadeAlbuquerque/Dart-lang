import 'conta.dart';

class EstruturaDados {
  static final List<Conta> dados = [];

  static void addDados(Conta p) {
    dados.add(p);
  }

  static buscaDados(int numeroConta, String nome, double valor) {
    if (dados.isEmpty) {
      print("Não há contas cadastradas");
    } else {
      for (var conta in dados) {
        if (conta.numeroConta == numeroConta && conta.dono == nome) {
          conta.depositar(valor);
        }
      }
    }
  }
}
