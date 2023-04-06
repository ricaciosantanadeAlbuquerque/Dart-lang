import 'Usuario.dart';

void main() {
  Usuario usuario = Usuario(nome: 'Ana', senha: '123');
  print(usuario.getInformacao);
  usuario.nome = 'Lucas';
  usuario.setSenha = '123456789';
  print('');
  print(usuario.getSenha);
}
