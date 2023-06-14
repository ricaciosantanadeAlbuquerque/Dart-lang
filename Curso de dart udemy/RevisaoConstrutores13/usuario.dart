class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    // construtor padrão
    this.nome = (nome != null) ? nome : 'sem nome definido';
    this.cargo = (cargo != null) ? cargo : 'usuário';
    print("Construtor com parâmetros nomeados e default ${this.toString()}");
  }

  Usuario.adimim({
    this.user,
    this.senha, 
    this.nome,
  }) {
    // construtor nomeado
    this.nome = (nome != null) ? nome : 'sem nome definido';
    this.cargo = 'Adiministrador';
    print("Construtor com parâmetros nomeados default ${this.toString()}");
  }

  void autenticar() {
    var user = 'ricacio';
    var senha = '123';
    (this.user == user && this.senha == senha) ? print("Autenticado") : print("ERRO! senha inválida.");
  }
}
