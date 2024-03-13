import 'pessoa.dart';

class Gafanhoto extends Pessoa {
  String? _login;
  int? _totAssistido;

  Gafanhoto({required String login, int totAssistido = 0, required String nome, required int idade, required String sexo, int experiencia = 0}) : super(nome: nome, idade: idade, sexo: sexo, experiencia: experiencia) {
    this.login = login;
    this.totAssistido = totAssistido;
  }

  String? get login => this._login;

  void set login(String? login) {
    this._login = login;
  }

  int? get totAssistido => this._totAssistido;

  void set totAssistido(int? totAssistido) {
    this._totAssistido = totAssistido;
  }

  void viuMaisUm() {
    this.totAssistido = this.totAssistido! + 1;
  }

  @override
  String toString() => 'Login:$login, Total assistido:$totAssistido, ${super.toString()}';
}
