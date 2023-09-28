abstract class Pessoa {
  // classe  modelo ou classe Raiz

  String? _nome;
  int? _idade;
  String? _sexo;
  double? _experiencia;

  Pessoa(this._nome, this._idade, this._sexo) {
    this.experiencia = 0;
  }

  // get end set
  get nome => this._nome;

  set nome(value) => this._nome = value;

  get idade => this._idade;

  set idade(value) => this._idade = value;

  get sexo => this._sexo;

  set sexo(value) => this._sexo = value;

  get experiencia => this._experiencia;

  set experiencia(value) => this._experiencia = experiencia;

  void ganharExperiencia();

  @override
  String toString() {
    return 'Nome:$_nome, Idade:$_idade, Sexo:$_sexo, Experiencia:$_experiencia';
  }
}
