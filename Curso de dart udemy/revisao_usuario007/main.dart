import 'usuario.dart';

void main() {
  Usuario usuario = Usuario('ricaciozz@gmail.com', '123456');

  usuario.autenticar();

  print("Nome:${usuario.nome}, Cargo ${usuario.cargo}, user:${usuario.user}, Senha:${usuario.senha}");

  // ================================================================================================

  Usuario admin = Usuario.admim('ricaciozz@gmail.com', '123456', nome: 'Ana');
  admin.autenticar();
  print("Nome:${admin.nome}, Cargo:${admin.cargo}, Usuário: ${admin.user}, Senha:${admin.user}");
}
