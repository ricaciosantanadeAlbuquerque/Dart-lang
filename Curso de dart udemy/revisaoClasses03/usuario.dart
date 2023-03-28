class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    var usuario = 'rick';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print("Usuário autenticado com sucesso ! ");
    } else {
      print("ERRO! senha ou usuário inválidos.");
    }
  }
}
