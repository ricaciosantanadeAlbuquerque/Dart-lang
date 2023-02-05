class Usuario {
  bool alteracao = false;
  String? nome;
  String? _senha;

  Usuario(this.nome, String? senha) {
    this._senha = (senha != null) ? senha : 'valor não informado';
  }

  String? get senha {
    if (this._senha != null) {
      return this._senha;
    }
  }

  void set senha(String? senha) {
    if (senha != null) {
      if (alteracao) {
        this._senha = senha;
      } else {
        print("Erro: Acesso negado !");
      }
    }
  }
}
