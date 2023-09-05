import 'aluno.dart';

class Bolsista extends Aluno {
  String? _bolsa;

  String? get bolsa => this._bolsa;

  void set bolsa(String? bolsa) => this._bolsa = bolsa;

  void renovarBolsa() {
    print('Bolsa renovada');
  }

  @override
  void pagarMensalidade() {
    print("Pagar Mensalidade como bolsista");
  }
}
