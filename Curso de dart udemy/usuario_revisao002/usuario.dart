class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    var usuario = 'ricaciozz@gmail.com';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuário autenticado!\n');
    } else {
      print('ERRO! senha ou e-mail inválido');
    }
  }
}
