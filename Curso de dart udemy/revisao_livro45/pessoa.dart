abstract class Pessoa {
  // atributos de classe

  String? _nome;
  int? _idade;
  String? _sexo;

// construtor default

  Pessoa({required String nome, required int idade, required String sexo}) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
  }

// get and set

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  int? get idade => this._idade;

  void set idade(int? idade) {
    this._idade = idade;
  }

  String? get sexo => this._sexo;

  void set sexo(String? sexo) {
    this._sexo = sexo;
  }

// métodos
  void fazerAniversario() {
    this.idade = this.idade! + 1;
    print('${this._nome} tinha a idade de $idade anos, e agora fez aniverário e esta com ${this.idade! + 1}');
  }
}
