import 'aluno.dart';

class Tecnico extends Aluno {
  int? _registroProfissional;

  int? get registroProfissional => this._registroProfissional;

  void set registroProfissional(int? registroProfissional) => this._registroProfissional = registroProfissional;

  void praticar() {
    print("Praticando");
  }

  @override
  void pagarMensalidade() {
    print('Pagar mensalidade como Aluno de curso técnico!');
  }
}
