import 'usuario.dart';

void main() {
  Usuario usuario = Usuario(nome: 'Ricacio', senha: '123456789');
  usuario.senha = '123456';
  print(usuario.senha);
  print("========================================================");
  usuario.alteracao = true;
  usuario.senha = '123456'; // quando recebe valor é set
  print(usuario.senha);  // quando mostra o valor e get 
}
