import 'dart:math';

class PessoaInstancia {
  static PessoaInstancia? _instancia;
  String? _nome;
  final int _identidade;

  factory PessoaInstancia({String nome = 'indefinido', int? identidade}) {
    identidade = (identidade == null) ? Random().nextInt(9999 + 1) : identidade;
    return _instancia ??= new PessoaInstancia._construtorNomeado(identidade, nome);
  }

  PessoaInstancia._construtorNomeado(this._identidade, this._nome);

  int get identidade => this._identidade;

  static PessoaInstancia get instancia => _instancia!;

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }
}
