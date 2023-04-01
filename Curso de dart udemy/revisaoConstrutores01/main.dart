import '../Construtores/main.dart';

void main() {
  Objeto objeto = Objeto(); // linha de instânciamento
  objeto.nome = " Carro";   // acessando  diretamente o atribulto.
  print("O nome do objeto é ${(objeto.nome != null) ? objeto.nome : ' Valor indefinido !'}");
}
