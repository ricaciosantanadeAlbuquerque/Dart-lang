class Pessoa {
  
  String _nome;
  String _sexo;
  int _idade;

  Pessoa(this._nome, this._idade, this._sexo);

  String get nome => this._nome;

  void set nome(String nome) {
    this._nome = nome;
  }

  String get sexo => this._sexo;

  void set sexo(String sexo) {
    this._sexo = sexo;
  }

  int get idade => this._idade;

  void set idade(int idade) {
    this._idade = idade;
  }

  void fazerAniversario() {
    this.idade = this.idade++;
  }
}
