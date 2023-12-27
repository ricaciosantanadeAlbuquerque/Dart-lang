import 'dart:math';

class PessoaInstancia {
  static PessoaInstancia? _instancia;
  String? nome;
  final int? _identidade;

  factory PessoaInstancia({String nome = 'indefinido', int? identidade}) {
    identidade = (identidade == null) ? Random().nextInt(9999 + 1) : identidade;
    return _instancia ??= PessoaInstancia._contrutorNomeado(nome, identidade);
  }

  PessoaInstancia._contrutorNomeado(this.nome, this._identidade);

  int? get identidade => this._identidade;

  static PessoaInstancia? get instancia => _instancia;
}
