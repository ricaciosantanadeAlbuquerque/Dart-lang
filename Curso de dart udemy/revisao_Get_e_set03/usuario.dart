class Usuario {
  bool alteracao = false;
  String nome;
  String? _senha;

  Usuario({required this.nome, required String senha}) {
    this._senha = senha;
  }

  String? get senha {
    return (this._senha != null) ? this._senha : 'Valor não informado';
  }

  void set senha(String? senha) {
    if (alteracao) {
      this._senha = (senha != null) ? senha : 'Valor não informado';
      print('Sucesso: Senha alterada !');
    } else {
      print('Erro: Acesso negado');
    }
  }
}
