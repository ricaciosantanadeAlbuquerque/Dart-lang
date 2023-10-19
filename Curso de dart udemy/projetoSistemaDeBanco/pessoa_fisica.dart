import 'pessoa.dart';

class PessoaFisica extends Pessoa {
  int? _cpfPessoa;
  int? _rgPessoa;
  int? _idadePessoa;

  PessoaFisica({
    required int? cpfPessoa,
    required int? rgPessoa,
    required int? idadePessoa,
    required String? nomePessoa,
    required String? ederecoPessoa,
    required int? cepPessoa,
    required int? telefonePessoa,
    required double? rendaPessoa,
    required int situacaoPessoa,
  }) : super(nomePessoa, ederecoPessoa, cepPessoa, telefonePessoa, rendaPessoa, situacaoPessoa) {
    this.cpfPessoa = (cpfPessoa != null) ? cpfPessoa : 0;
    this.rgPessoa = (rgPessoa != null) ? rgPessoa : 0;
    this.idadePessoa = (idadePessoa != null) ? idadePessoa : 0;
    this.nomePessoa = (nomePessoa != null) ? nomePessoa : 'indefinido';
    this.ederecoPessoa = (ederecoPessoa != null) ? ederecoPessoa : 'indefinido';
    this.cepPessoa = (cepPessoa != null) ? cepPessoa : 0;
    this.telefonePessoa = (telefonePessoa != null) ? telefonePessoa : 0;
    this.rendaPessoa = (rendaPessoa != null) ? rendaPessoa : 0.0;
    this.situacaoPessoa = situacaoPessoa;
  }

  int? get cpfPessoa => this._cpfPessoa;

  void set cpfPessoa(int? cpfPessoa) {
    this._cpfPessoa = cpfPessoa;
  }

  int? get rgPessoa => this._rgPessoa;

  void set rgPessoa(int? rgPessoa) {
    this._rgPessoa = rgPessoa;
  }

  int? get idadePessoa => this._idadePessoa;

  void set idadePessoa(int? idadePessoa) {
    this._idadePessoa = idadePessoa;
  }

  int validarCpf(int cpf) {
    var valor = 0;

    if (this._cpfPessoa == cpf) {
      valor = 1;
    }

    return valor;
  }

  String? consultarCpf(int cpf) {
    String procura = '';
    if (cpf == this.cpfPessoa) {
      procura = 'CPF: ${this.cpfPessoa}  da cliente $nomePessoa';
    }

    return procura;
  }
  
}
