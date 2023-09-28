import 'pessoa.dart';
import 'video.dart';

class Gafanhoto extends Pessoa {
  String? _login;
  int? _totAssistido;

  Gafanhoto(String nome, int idade, String sexo, String login) : super(nome, idade, sexo) {
    this.login = login;
    this.totAssistido = 0;
  }

  get login => this._login;

  set login(value) => this._login = value;

  get totAssistido => this._totAssistido;

  set totAssistido(value) => this._totAssistido = value;

  void viuMaisUm() {
    this.totAssistido = this.totAssistido + 1;
  }

  @override
  void ganharExperiencia() {
    this.experiencia = this.experiencia + 1;
  }

  @override
  String toString() {
    return 'Pessoa:'+super.toString()+' Login:$_login, TotAssistido: $_totAssistido';
  }
}
