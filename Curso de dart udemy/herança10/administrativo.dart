import 'funcionarios.dart';

class Administrativo extends Funcionarios {
  String? _turno;
  double _adicionalNoturno = 250;

  Administrativo(this._turno,String? nome, {double? salario = 0.0}) : super(nome, salario) {
    this._turno = (this._turno != null) ? this._turno : 'indefinido';
    nome = (nome != null) ? nome : 'indefinido';
  }

  String? get turno => this._turno;

  void set turno(String? turno) {
    this._turno = turno;
  }

  double get adicionalNoturno => this._adicionalNoturno;

  void set adicionalNoturno(double adicionalNoturno) {
    this._adicionalNoturno = adicionalNoturno;
  }

  @override
  void ganhoAnual() {
    if (this.turno == 'noturno' || this.turno == 'noite') {
      print("Ganho Anual ${(this.salario! + this.adicionalNoturno) * 12}");
    } else {
      print("Ganho Anual ${this.salario! * 12}");
    }
  }
}
