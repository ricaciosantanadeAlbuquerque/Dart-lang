abstract class Pessoa {
  String? _nome;
  int? _idade;
  String? _sexo;
  int? _experiencia;

  Pessoa({required String nome, required int idade, required String sexo, required int experiencia }) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
    this.experiencia = experiencia;
  }

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

  int? get experiencia => this._experiencia;

  void set experiencia(int? experiencia) {
    this._experiencia = experiencia;
  }

  void ganharExperiencia() {
    this.experiencia = this.experiencia! + 1;
  }

  @override
  String toString() => ' Nome:$nome, Idade:$idade, Sexo:$sexo Experiência:${this.experiencia}';
}
