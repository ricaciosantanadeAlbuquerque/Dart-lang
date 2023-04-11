class Aluno {
//  atribultos ==========================================================================
  String _nome;
  int _idade;
  double _nota1;
  double _nota2;
  double _nota3;
  double _nota4;
  double? _media;
// construtor =============================================================================
  Aluno(this._nome, this._idade, this._nota1, this._nota2, this._nota3, this._nota4);
// get and set =============================================================================
  String get nome => this._nome;

  void set nome(String nome) {
    this._nome = nome;
  }

  int get idade => this._idade;

  void set idade(int idade) {
    this._idade = idade;
  }

  double get nota1 => this._nota1;

  void set nota1(double nota1) {
    this._nota1 = nota1;
  }

  double get nota2 => this._nota2;

  void set nota2(double nota2) {
    this._nota2 = nota2;
  }

  double get nota3 => this._nota3;

  void set nota3(double nota3) {
    this._nota3 = nota3;
  }

  double get nota4 => this._nota4;

  void set nota4(double nota4) {
    this._nota4 = nota4;
  }

  double? get media => this._media;

  void set media(double? media) {
    this._media = media;
  }

  // métodos================================================================
  void mudarNome(String nome) {
    this.nome = nome;
  }

  void alterarIdade(int idade) {
    this.idade = idade;
  }

  void alterarNota1(double nota1) {
    this.nota1 = nota1;
  }

  void alterarNota2(double nota2) {
    this.nota2 = nota2;
  }

  void alterarNota3(double nota3) {
    this.nota3 = nota3;
  }

  void alterarNota4(double nota4) {
    this.nota4 = nota4;
  }

  // his._nome, this._idade, this._nota1, this._nota2, this._nota3, this._nota4
  @override
  String toString() {
    return "Nome: $_nome, Idade: $_idade, Nota1: $_nota1, Nota2: $_nota2, Nota3: $_nota3 nota4: $_nota4, Media: ${this.media?.toStringAsFixed(2)} ";
  }
}
