class Pessoa {
  String _nome;
  String _endereco;
  String _cpf;
  int _idade;

  Pessoa(this._nome, this._endereco, this._cpf, this._idade);

  String get getNome {
    return this._nome;
  }

  void set setNome(String nome) {
    this._nome = nome;
  }

  String get getEndereco {
    return this._endereco;
  }

  void set setEndereco(String endereco) {
    this._endereco = endereco;
  }

  String get getCpf {
    return this._cpf;
  }

  void set setCpf(String cpf) {
    this._cpf = cpf;
  }

  int get getIdade {
    return this._idade;
  }

  void set setIdade(int idade) {
    this._idade = idade;
  }
  // get and set personalizado ========

  String get getInformacao => 'Nome: ${this._nome}, Endereco: ${this._endereco}, Cpf: ${this._cpf}, Idade: ${this._cpf}';
}
