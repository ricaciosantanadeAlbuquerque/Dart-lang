import 'usuario.dart';

void main(List<String> args) {
  Usuario usuario = Usuario();

  usuario.usuario = 'ricaciozz@gmail.com'; // através do operador . o objeto acessa seus atribultos
  usuario.senha = '123456';

  usuario.autenticar();

  Usuario usuario2 = new Usuario();

  usuario2.usuario = 'rejjj@gmail.com';
  usuario2.usuario = '123456';

  usuario2.autenticar();
}
