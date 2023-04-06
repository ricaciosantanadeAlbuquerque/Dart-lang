class Usuario {
  
  String nome;
  String? _senha;

  Usuario({required this.nome, required String senha}) {
    this._senha = senha;
  }

  String? get getSenha {
    return this._senha ?? 'valor não infomado';
  }

  void set setSenha(String senha) {
    this._senha = senha;
  }

  // get e set  personalizado ==========]

 String get getInformacao => 'Nome: ${this.nome},  Senha: ${_senha}';
}
