class Pessoa {
  String _nome;

  Pessoa(this._nome); // O atribulto  nome está sendo  inicializado pelo construtor

  String get nome => this._nome;

  void set nome(String nome) => this._nome = (nome != null) ? nome : ' O valor não foi informado !';

  String toString() {
    return "\nNome: $_nome\n";
  }
}
