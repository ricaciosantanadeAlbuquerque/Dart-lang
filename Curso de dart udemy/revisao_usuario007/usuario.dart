class Usuario {
  String? user, senha, cargo, nome;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome != null) ? nome : 'sem nome';
    this.cargo = (cargo != null) ? cargo : 'usuário';
    print("\nConstrutor resumido com parametros nomeados  ${this.toString()}\n");
  }

  Usuario.admim(this.user, this.senha, {this.nome}) {
    this.nome = (nome != null) ? nome : 'Sem nome';
    this.cargo = 'Administrador';
    print("\nConstrutor nomeado, resumido com parametros nomeados ${this.toString()}\n");
  }

  void autenticar() {
    dynamic user = 'ricaciozz@gmail.com';
    dynamic senha = '123456';

    (this.user == user && this.senha == senha) ? print('Usuário e senha autenticados \n') : print("Usuário não autenticado\n");
  }
}
