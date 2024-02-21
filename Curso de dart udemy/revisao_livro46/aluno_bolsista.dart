import 'aluno.dart';

class AlunoBolsista extends Aluno {
  String? _bolsa;

  AlunoBolsista(this._bolsa, {required int matricula, required String curso, required String nome, required int idade, required String sexo}) : super(matricula, curso, nome: nome, idade: idade, sexo: sexo);

  String? get bolsa => this._bolsa;

  void set bolsa(String? bolsa) => this._bolsa = bolsa;

  void renovarBolsa() {
    print('Bolsa renovada com sucesso !');
  }

  @override
  void pagarMensalidade() {
    print('Pagendo a Mensalidade como um Aluno bolsista');
  }
  @override
  String toString() => super.toString() + ' Bolsa:$bolsa ';
}
