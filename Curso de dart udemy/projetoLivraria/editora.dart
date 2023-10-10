class Editora {
  String? _nome;
  String? _email;

  Editora({required String nome, required String email}) {
    this.email = (email.isNotEmpty) ? email : 'Valor não informado';
    this.nome = (nome.isNotEmpty) ? nome : 'Valor não informado';
  }
// get and set
  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  String? get email => this._email;

  void set email(String? email) {
    this._email = email;
  }

  void consultar(){
    // todo
  }
}
