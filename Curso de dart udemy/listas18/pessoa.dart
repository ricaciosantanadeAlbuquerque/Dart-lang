import 'dart:math';

class Pessoa {
  String? nome, sobrenome;
  int? _identidade;

  Pessoa(this.nome, this.sobrenome, {int? identidade}) {
    this.identidade = (identidade != null) ? identidade : Random().nextInt(99999999);
  }

  int? get identidade => this._identidade;

  void set identidade(int? identidade) {
    this._identidade = identidade;
  }
}
