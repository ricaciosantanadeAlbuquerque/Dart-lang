import 'pessoa.dart';

class Gafanhoto extends Pessoa {
  String? _login;
  int? _totAssistido;

  Gafanhoto({required String nome, required int idade, required String sexo, required String login}) : super(nome: nome, idade: idade, sexo: sexo) {
    this.login = login;
    this.totAssistido = 0;
  }

  String? get login => this._login;

  void set login(String? login) => this._login = login;

  int? get totAssistido => this._totAssistido;

  void set totAssistido(int? totAssistido) => this._totAssistido = totAssistido;

  @override
  String toString() => super.toString() +  ' Login:$login, Total Assistido:$totAssistido ';
}
