import 'funcionarios.dart';

class Tecnico extends Funcionarios {
  double _bonusSalarial = 12;
  //  Assistente(this._matricula, String? nome, double? salario) : super(nome, salario);
  Tecnico(double? bonusSalarial, int? matricula, String? nome, {double? salario = 0.0}) : super(nome, salario) {
    this._bonusSalarial = (bonusSalarial != null) ? bonusSalarial : 0;
    nome = (nome != null) ? nome : 'indefinido';
  }

  double get bonusSalarial => this._bonusSalarial;

  void set bonusSalarial(double bonusSalarial) {
    this._bonusSalarial = bonusSalarial;
  }

  @override
  void ganhoAnual() {
    print("Ganhou Anual ${(this.salario! + this.bonusSalarial) * 12}");
  }
}
