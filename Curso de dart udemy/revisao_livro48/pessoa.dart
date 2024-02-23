abstract class Pessoa {
  String? _nome;
  int? _idade;
  String? _sexo;
  double? _experiencia;

  Pessoa({required String nome, required int idade, required String sexo}) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
    this.experiencia = 0;
  }

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome;

  int? get idade => this._idade;

  void set idade(int? idade) => this._idade = idade;

  String? get sexo => this._sexo;

  void set sexo(String? sexo) => this._sexo = sexo;

  double? get experiencia => this._experiencia;

  void set experiencia(double? experiencia) {
    this._experiencia = experiencia;
  }

  @override
  String toString() {
    return ' Nome:$nome, Idade:$idade, Sexo:$sexo, Experiência:$experiencia ';
  }
}
