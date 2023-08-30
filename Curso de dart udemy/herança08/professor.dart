import 'pesssoa.dart';

class Professor  extends Pessoa{ // professor tem tudo  que pessoa tem
  String? _especializacao;
  double? _salario;

  String? get especializacao => this._especializacao;

  void set especializacao(String? especializacao) => this._especializacao = especializacao;

  double? get salario => this._salario;

  void set salario(double? salario) {
    this._salario = salario;
  }

  void receberAumento(double salario) {
    this.salario = this.salario! + salario;
  }
}
