import 'usuario.dart';

void main() {
  Usuario usuario = Usuario(nome: 'Lucas', senha: '123');
  print("Nome: ${usuario.nome}, senha: ${usuario.senha}");
  usuario.nome = 'Biza';
  usuario.senha = '123456';
  print(usuario.nome);
  print(usuario.senha);
}
