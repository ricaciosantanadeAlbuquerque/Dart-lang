import 'home_usuario.dart';

void main() {
  Usuario usuario1 = new Usuario("Ana", "123");
  print("nome: ${usuario1.nome} senha: ${usuario1.senha}"); // só retornar um valor get
  usuario1.senha = "123456"; // quando passamos valores set
  print("Nome: ${usuario1.nome} Senha: ${usuario1.senha}");
  usuario1.alteracao = true; // este atribulto está public
  usuario1.senha = "123456";
  print("Nome: ${usuario1.nome} Senha: ${usuario1.senha}");
}
