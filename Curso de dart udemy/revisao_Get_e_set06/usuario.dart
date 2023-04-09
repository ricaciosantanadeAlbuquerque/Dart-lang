class Usuario {
  String? _nome;
  String? _senha;

  Usuario({required String nome, required String senha}) {
    this._nome = nome;
    this._senha = senha;
  }

  String? get nome => (this._nome != null) ? this._nome : 'Valor não informado';

  void set nome(String? nome) {
    this._nome = (nome != null) ? nome : 'Valor não informado';
  }

  String? get senha => (this._senha != null) ? this._senha : 'Valor não informado';

  void set senha(String? senha) {
    this._senha = (senha != null) ? senha : 'Valor não informado';
  }
}
