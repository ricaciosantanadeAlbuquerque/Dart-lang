import 'usuario.dart';

void main() {
  Usuario p1 = new Usuario(); // Criamos um objeto da classe Usuário 'p1' e sendo uma instância da classe, ele compartilha de seus atribultos e métodos
  p1.usuario = "rick";
  p1.senha = "123456";
  p1.autenticar();
  print("==============================================");
  Usuario p2 = Usuario();
  p2.usuario = "lucas";
  p2.senha = "123456";
  p2.autenticar();
}
