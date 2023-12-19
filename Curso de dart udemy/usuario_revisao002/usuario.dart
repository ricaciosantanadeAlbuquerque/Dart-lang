class Usuario {
  String? usuario; // criamos um atributo de nome "usuario" e o declaramos como sendo String e que aceita valores null ?
  String? senha;

  void autenticar() {
    var usuario = 'ricaciozz@gmail.com';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuário autenticado!\n');
    } else {
      print('ERRO! senha ou e-mail inválido\n');
    }
  }
}
