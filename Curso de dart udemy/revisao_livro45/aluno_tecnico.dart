import 'aluno.dart';

class AlunoTecnico extends Aluno {
  String? _resgistroProfissional;

  AlunoTecnico({required String resgistroProfissional, required int matricula, required String curso, required String nome, required int idade, required String sexo})
      : super(matricula: matricula, curso: curso, nome: nome, idade: idade, sexo: sexo) {
    this.resgistroProfissional = resgistroProfissional;
  }

  String? get resgistroProfissional => this._resgistroProfissional;

  void set resgistroProfissional(String? resgistroProfissional) {
    this._resgistroProfissional = resgistroProfissional;
  }

  void praticar() {
    print('Aluno $nome está praticando !!');
  }
}
