abstract class Pessoa1 {
  // classe modelo

// atributos ==============================================================

  String? _nome;
  int? _idade;
  String? _sexo;
  double? _experiencia;
// construtor ==============================================================
  Pessoa1({required String nome, required int idade, required String sexo}) {
    this._nome = nome;
    this._idade = idade;
    this._sexo = sexo;
    this._experiencia = 0;
  }

// get and set ==============================================================

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome;

  int? get idade => this._idade;

  void set idade(int? idade) => this._idade = idade;

  String? get sexo => this._sexo;

  void set sexo(String? sexo) => this._sexo = sexo;

  double? get experiencia => this._experiencia;

  void set experiencia(double? experiencia) => this._experiencia = experiencia;

  void ganharExp();

  @override
  String toString() {
    return 'Nome: $_nome, Idade: $_idade, Sexo:$_sexo Experiencia: $_experiencia';
  }
}
