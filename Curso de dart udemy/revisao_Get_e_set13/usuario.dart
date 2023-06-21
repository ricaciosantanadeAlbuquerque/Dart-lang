class Usuario {
  bool alteracao = false;
  String nome;
  String? _senha;

  Usuario({required this.nome, required String? senha}) {
    this._senha = (senha != null) ? senha : '123';
  }

  String get senha {
    return this._senha!;
  }

  void set senha(String senha) {
    if (alteracao == true) {
      this._senha = senha;
      print("Senha alterada com sucesso !");
    } else {
      print("ERRO! Não é possível alterar senha ");
    }
  }
}
