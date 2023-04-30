import 'dart:math';

class PessoaInstancia {
  // para que o atribulto instancia possa ser utilizado dentro do construtor factory ela deve ser static
  static PessoaInstancia? instancia;
  String? nome;
  int _identidade = 0;
 // sempre será retornado o mesmo objeto porque instância já possui um objeto alocado dentro dela.
  factory PessoaInstancia({String nome = 'Indefinido', int? identidade}) {
    return instancia ??= PessoaInstancia._nomeado(nome: nome, identidade: identidade);
  }

  PessoaInstancia._nomeado({String? nome, int? identidade}) {
    this._identidade = (identidade == null) ? Random().nextInt(999 + 1) : identidade;
    this.nome = (nome != null) ? nome : 'Indefinido';
  }

  int get identidade {
    return _identidade;
  }

  void set identidade(int identidade) {
    this._identidade = identidade;
  }
}
