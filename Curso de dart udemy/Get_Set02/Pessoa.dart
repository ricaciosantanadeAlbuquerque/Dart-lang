class Pessoa1 {
  String _nome;
  int _idade;
  double _altura;
  String _sexo;
  String _endereco;
  String _qualidade = "mais ou menos ";
  // construtor padrão
  Pessoa1(this._nome, this._idade, this._altura, this._sexo, this._endereco);
  // construtor nomeado
  Pessoa1.boa(this._nome, this._idade, this._altura, this._sexo, this._endereco, this._qualidade);
  // get and sets

  String get nome {
    return this._nome;
  }

  void set nome(String nome) {
    this._nome = nome;
  }

  int get idade {
    return this._idade;
  }

  void set idade(int idade) {
    this._idade = idade;
  }

  double get altura {
    return this._altura;
  }

  void set altura(double altura) {
    this._altura = altura;
  }

  String get sexo {
    return this._sexo;
  }

  void set sexo(String sexo) {
    this._sexo = sexo;
  }

  String get endereco {
    return this._endereco;
  }

  void set endereco(String endereco) {
    this._endereco = endereco;
  }

  String get qualidade {
    return this._qualidade;
  }

  void set qualidade(String qualidade) {
    this._qualidade = qualidade;
  }

  // get e set modificados

  String get dados => "\nNome: ${this._nome}, Idade: ${this._idade}, Altura: ${this._altura} Sexo: ${this._sexo}, Endereço: ${this._endereco} Qualidade: ${this._qualidade}\n";
}
