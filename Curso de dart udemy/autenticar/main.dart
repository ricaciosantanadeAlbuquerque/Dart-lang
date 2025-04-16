import 'usuario.dart';

void main() {
  Usuario usuario01 = Usuario();
  print('================ ERRO !! ==================');
  print(usuario01.autenticar(login: 'lucas', senha: '123')
      ? 'Senha e login válidos'
          '${usuario01
            ..login
            ..senha}'
      : 'Login ou a senha  está incorreta ');
  print('');
  print('================ Acerto !! ==================');

  print(
      usuario01.autenticar(login: 'ricacio 123456'.trim().replaceAll(RegExp(r'\s+'), ''), senha: '123456789') ? 'Senha e login válidos '
          'Login:${usuario01.login}, Senha:${usuario01.senha}' : 'Login ou a senha  está incorreta');
}
