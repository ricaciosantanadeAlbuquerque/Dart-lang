import 'pessoa.dart';

class Gafanhoto1 extends Pessoa1 {
  String? _login;
  int? _totAssistido;

  Gafanhoto1({String nome = 'indefinido', int idade = 0, String sexo = 'indefinido', String? login}) : super(nome: nome, idade: idade, sexo: sexo) {
    this._login = (login != null) ? login : 'indefinido';
    this._totAssistido = 0;
  }

  String? get login => this._login;

  void set login(String? login) {
    this._login = login;
  }

  int? get totAssistido => this._totAssistido;

  void set totAssistido(int? totAssistid) {
    this._totAssistido = totAssistid;
  }

  @override // polimorfismo de sobreposição obrigatória
  void ganharExp() {
    this.experiencia = this.experiencia! + 1;
  }

  void viuMaisUm() {
    this.totAssistido = this.totAssistido! + 1;
  }

  @override
  String toString() {
    return 'Pessoa:' + super.toString() + ' Login:$_login, TotAssistido:$_totAssistido';
  }
}
