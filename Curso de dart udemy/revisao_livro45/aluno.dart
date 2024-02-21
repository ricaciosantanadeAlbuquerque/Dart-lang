import 'pessoa.dart';

/// Aluno herda TUDO de pessoa TUDO !!!

class Aluno extends Pessoa {
  int? _matricula;
  String? _curso;

  Aluno({required int matricula, required String curso,required String nome,required int idade,required String sexo}) : super(nome: nome,idade:idade,sexo: sexo) {
    this.matricula = matricula;
    this.curso = curso;
  }

  int? get matricula => this._matricula;

  void set matricula(int? matricula) {
    this._matricula = matricula;
  }

  String? get curso => this._curso;

  void set curso(String? curso) {
    this._curso = curso;
  }

  void pagarMensalidade() {
    print('Pagando mensalidade do curso de $_curso como aluno padrão');
  }
}
