class Editora {
  String? _nome;
  String? _email;

  Editora({required String? nome, required String? email}) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.email = (email != null) ? email : 'indefinido';
  }

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  String? get email => this._email;

  void set email(String? email) {
    this._email = email;
  }

  void consultar() {
    this.toString();
  }

  @override
  String toString() => 'Nome $_nome, Email: $_email';
}
