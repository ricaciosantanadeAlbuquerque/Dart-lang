import 'pessoa.dart';

class Aluno extends Pessoa {
  int? _matricula;
  String? _curso;

  int? get matricula => this._matricula;

  void set matricula(int? matricula) => this._matricula = matricula;

  String? get curso => this._curso ;

  void set curso(String? curso) => this._curso = curso;

  void  pagarMensalidade() {
    print('Pagando Mensalidade');
  }
}
