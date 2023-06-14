import 'objeto.dart';

void main() {
  Objeto objeto = new Objeto(); // linha de instanciamento
  // atravez do objeto posso acessar seus atirbultos
  objeto.nome = "Lucas"; // passando uma valor para o atribulto nome por meio do objeto;
  print("Nome: ${objeto.nome}"); // Mostrando o valor do atribulto nome por meio do objeto 
}
//Atravez do objeto ou instância de uma classe podemos acessar seus atribultos e métodos