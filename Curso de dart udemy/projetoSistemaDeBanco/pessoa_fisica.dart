class PessoaFisica {
  int? _cpfPessoa;
  int? _rgPessoa;
  int? _idadePessoa;

  PessoaFisica();

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

  void registrarPessoa() {}

  int validarCpf(int cpf) {
    return 0;
  }

  String consultarCpf(int) {
    return '';
  }
}
