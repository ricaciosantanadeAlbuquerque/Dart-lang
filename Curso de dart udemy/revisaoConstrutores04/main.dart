import 'usuario.dart';

void main() {
  Usuario4 usuario1 = Usuario4('ricacio', '123', nome: 'ricacio', idade: 33);
  print("Nome: ${usuario1.nome}, Senha ${usuario1.senha} ,Usuário ${usuario1.user}, Cargo: ${usuario1.cargo}, idade: ${usuario1.idade}");
  usuario1.autenticar();
  print("=============================================================================================================================");
  Usuario4 usuario2 = Usuario4('ana', '123456', cargo: "Lojista", idade: 23, nome: 'ana');
  print("Nome: ${usuario2.nome}, Senha ${usuario2.senha} ,Usuário ${usuario2.user}, Cargo: ${usuario2.cargo}, idade: ${usuario1.idade}");
  usuario2.autenticar();
  print("=============================================================================================================================");
  Usuario4 usuario3 = Usuario4.admin('ricacio', '123', idade: 28, nome: 'Matheus');
  print("Nome: ${usuario3.nome}, Idade: ${usuario3.idade}, Usuário: ${usuario3.cargo}, Senha: ${usuario3.senha}");
  usuario3.autenticar();
}
