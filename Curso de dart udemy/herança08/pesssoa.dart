class Pessoa {
  String? _nome;
  int _idade = 0;
  String? _sexo;

  // get and set

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  int get idade => this._idade;

  void set idade(int idade) {
    this._idade = idade;
  }

  String? get sexo => this._sexo;

  void set sexo(String? sexo) => this._sexo = sexo;

  void fazerAniversario() {
    this.idade = this.idade + 1;
  }
  
 @override
  String toString() {
    return 'nome: $_nome, idade: $_idade, sexo: $_sexo';
  }
}
