import 'usuario.dart';

void main() {
  Usuario usuario = Usuario('Ana', senha: '122');

  usuario
    ..senha = '123456'
    ..alteracao = true
    ..senha = '123456789'; // .. operador em cascata !

  print("Nome:${usuario.nome}, Senha:${usuario.senha}");
}
