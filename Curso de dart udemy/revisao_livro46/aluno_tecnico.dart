import 'aluno.dart';

class AlunoTecnico extends Aluno {
  String? _registroProfissional;

  AlunoTecnico(this._registroProfissional, {required int matricula, required String curso, required String nome, required int idade, required String sexo}) : super(matricula, curso, nome: nome, idade: idade, sexo: sexo);

  String? get registroProfissional => this._registroProfissional;

  void set registroProfissional(String? registroProfissiona) => this._registroProfissional = registroProfissiona;

  void praticar() {
    print('Praticando');
  }

  @override
  String toString() => super.toString() + '$registroProfissional';
}
