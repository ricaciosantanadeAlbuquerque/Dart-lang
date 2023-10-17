class PessoaJuridica {
  int? _cnpjPessoa;

  PessoaJuridica({required int cnpjPessoa});

  int? get cnpjPessoa => this._cnpjPessoa;

  void set cnpjPessoa(int? cnpjPessoa) {
    this._cnpjPessoa = cnpjPessoa;
  }

  void registrarPessoa() {}

  int validarCnpj(int long) {
    return 0;
  }

  String consultarCnpj() {
    return '';
  }
  
}
