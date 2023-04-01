class Usuario4 {
  String? user, senha, nome, cargo; // como são todos atribultos do tipo 'String', posso crialos em uma mesma linha separadas por virgula.
  int? idade;

  Usuario4(this.user, this.senha, {this.idade,this.nome, String? cargo}) {
    this.user = (user != null) ? user : 'Não definido';
    this.senha = (senha != null) ? senha : 'Não definido';
    this.nome = (nome != null) ? nome : 'Não definido';
    this.cargo = (cargo != null) ? cargo : 'Usuario';
    print("Instância da classe ${this.toString()}");
  }

  Usuario4.admin(this.user, this.senha, {this.nome,this.idade}) {
    this.user = (this.user != null) ? this.user : 'Não definido';
    this.senha = (this.senha != null) ? this.senha : 'Não definido';
    this.nome = (this.nome != null) ? this.nome : 'Não definido';
    this.cargo = 'Adiministrador';
    print("Instância da classe ${this.toString()}");
  }

  void autenticar() {
    // variáveis locais ==
    var user = 'ricacio';
    var senha = '123';

    if (this.user == user && this.senha == senha) {
      print("Usuário autenticado !");
    } else {
      print("ERRO! não foi possível autenticar ");
    }
  }
}
