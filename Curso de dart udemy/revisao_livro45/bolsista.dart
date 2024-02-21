import 'aluno.dart';

class Bolsista extends Aluno {
  String? _bolsa;

  Bolsista({required String bolsa, required int matricula, required String curso, required String nome, required int idade, required String sexo}) : super(matricula: matricula, curso: curso, nome: nome, idade: idade, sexo: sexo) {}

  String? get bolsa => this._bolsa;

  void set bolsa(String? bolsa) {
    this._bolsa = bolsa;
  }

  void renovarBolsa() {
    print('Renovando a bolsa do aluno ');
  }

  @override
  void pagarMensalidade() {
    print('Pagar mensalidade como bolsista ! do curso $curso');
  }
}
