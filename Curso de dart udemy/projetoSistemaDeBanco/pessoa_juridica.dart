import 'pessoa.dart';

class PessoaJuridica extends Pessoa {
  int? _cnpjPessoa;

  PessoaJuridica({
    required int cnpjPessoa,
    required String? nomePessoa,
    required String? ederecoPessoa,
    required int? cepPessoa,
    required int? telefonePessoa,
    required double? rendaPessoa,
    required int situacaoPessoa,
  }):super(nomePessoa,ederecoPessoa,cepPessoa,telefonePessoa,rendaPessoa,situacaoPessoa) {
    this.cnpjPessoa = (cnpjPessoa != null) ? cnpjPessoa : 0;
     this.nomePessoa = (nomePessoa != null) ? nomePessoa : 'indefinido';
    this.ederecoPessoa = (ederecoPessoa != null) ? ederecoPessoa : 'indefinido';
    this.cepPessoa = (cepPessoa != null) ? cepPessoa : 0;
    this.telefonePessoa = (telefonePessoa != null) ? telefonePessoa : 0;
    this.rendaPessoa = (rendaPessoa != null) ? rendaPessoa : 0.0;
    this.situacaoPessoa = situacaoPessoa;
  }

  int? get cnpjPessoa => this._cnpjPessoa;

  void set cnpjPessoa(int? cnpjPessoa) {
    this._cnpjPessoa = cnpjPessoa;
  }

  int validarCnpj(int cnpj) {
    int valor = 0;
    if (cnpj == cnpjPessoa) {
      valor = 1;
    }
    return valor;
  }

  String consultarCnpj(int cnpj) {
    String valor = '';

    if (cnpj == cnpjPessoa) {
      valor = 'CNPJ: ${cnpjPessoa}';
    }
    return valor;
  }
}
