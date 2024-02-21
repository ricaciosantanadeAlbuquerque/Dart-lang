import 'pessoas.dart';

class Aluno extends Pessoa {
  int? _matricula;
  String? _curso;

  Aluno(this._matricula, this._curso, {String nome = 'Indefinido', int idade = 0, String sexo = 'Indefinido'}) : super(nome: nome, idade: idade, sexo: sexo);

  int? get matricula => this._matricula;

  void set matricula(int? matricula) => this._matricula = matricula;

  String? get cruso => this._curso;

  void set curso(String? curso) => this._curso = curso;

  void pagarMensalidade() {
    print('Pagando a Mensalidade como aluno padrão ');
  }

  @override
  String toString() => ' Matricula:$matricula, curso: $cruso ' + super.toString();
}
