import 'usuario.dart';

void main() {
  Usuario usuario1 = new Usuario(nome: 'Ana', senha: '123456');
  usuario1.senha = '777';
  print("Nnome: ${usuario1.nome}, Senha: ${usuario1.senha}");

  usuario1.alteracao = true;
  usuario1.senha = '123456789';

  print("Nome: ${usuario1.nome}, Senha:${usuario1.senha}");
  print("======================================================");

  var usuario2 = Usuario(nome: 'Lucas', senha: 'jjjR');
  usuario2
    ..senha = '44'
    ..alteracao = true
    ..senha = '55';

  // Operador em cascata;
}
