import 'dart:math';

class PessoaInstancia {
  static PessoaInstancia? _instancia; // atribulto  enchergado  pela classe
  String? _nome; // atribulto enchergado pela objeto da classe
  final int _identidade;

  factory PessoaInstancia({String nome = 'indefinido', int? identidade}) {
    identidade = (identidade == null) ? Random().nextInt(9999 + 1) : identidade;
    return _instancia ??= new PessoaInstancia._construtorNomeado(identidade, nome);
  }

  PessoaInstancia._construtorNomeado(this._identidade, this._nome);

  int get identidade => this._identidade;

  static PessoaInstancia get instancia => _instancia!; // método enchergado pela classe

  String? get nome => this._nome; // método enchergado pelo objeto da classe

  void set nome(String? nome){
    this._nome = nome;
  }
}
