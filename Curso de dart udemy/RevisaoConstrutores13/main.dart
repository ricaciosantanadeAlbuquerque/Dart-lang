import 'usuario.dart';

void main() {
  Usuario usuario = Usuario(
    'ricacio',
    "123",
    nome: "Lucas",
  );
  print("Nome: ${usuario.nome}, Cargo: ${usuario.cargo}, Usuário: ${usuario.user}, Senha: ${usuario.senha}\n");
  usuario.idade = 30;
  print(usuario.idade);
  usuario.autenticar();

  // ===========================================================================================================

  Usuario usuarioAdimin = Usuario.adimim(nome: "Ana", senha: "1234", user: "jj123");
  print("Nome: ${usuarioAdimin.nome}, Cargo: ${usuarioAdimin.cargo}, Usuário: ${usuarioAdimin.user}, Senha: ${usuarioAdimin.senha}\n");
  usuarioAdimin.idade = 26;
  print(usuarioAdimin.idade);

  print("Igual ? ${identical(usuario, usuarioAdimin) ? 'Sim !' : 'Não !'}");
  usuarioAdimin.autenticar();
}
