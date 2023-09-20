import 'funcionarios.dart';

class Assistente extends Funcionarios { // herança pré diferença
  int? _matricula;

  Assistente(this._matricula, String? nome, double? salario) : super(nome, salario);

  int? get matricula => this._matricula;

  void set matricula(int? matricula) => this._matricula = matricula;

  @override
  void exibirDados() {
    print('Matrícula $_matricula');
    super.exibirDados();
  }
}
