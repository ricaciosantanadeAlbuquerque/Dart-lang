class Usuario {
  bool? alteracao = false;
  String? nome;
  String? _senha;

  Usuario(this.nome, {String? senha}) {
    this._senha = (senha != null) ? senha : 'indefinido';
  }

  String? get senha => this._senha;

  void set senha(String? senha) {
    if (this.alteracao == true) {
      this._senha = senha;
      print("Sucesso: Senha alterada !");
    } else {
      print('Erro: Acesso Negado!');
    }
  }
}
