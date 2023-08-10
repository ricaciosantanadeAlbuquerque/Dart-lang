import 'controle.dart';

class Pessoa {
  String? _nome;
  int? _idade;
  Controle? _controle;
  Pessoa({required String? nome, required int? idade}) {
    this._nome = (nome != null) ? nome : 'indefinido';
    this._idade = (idade != null) ? idade : null;
  }

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }
}
