import 'cao.dart';

void main() {
  Cao cao1 = Cao('LuLu', 'poodle', null);

  print('Nome:${cao1.nome}, raça: ${cao1.raca}, Sexo:${cao1.sexo}, idade:${cao1.idade} docil ${cao1.docil}');
  print('');

  var cao2 = Cao('Max', 'Vira_lata', 'Macho', idade: '3');
  print('');

  print('Nome:${cao2.nome}, raça: ${cao2.raca}, Sexo:${cao2.sexo}, Idade:${cao2.idade} docil ${cao2.docil}');

  print('Os objetos são iguais ?? ${identical(cao1, cao2) ? 'Sim !' : ' Não'}');

  cao1
    ..dormir() // classe Animal
    ..alimentar() //classe Mamifero
    ..acao(); // classe Cao
//======================================================================
 
 /**
  * herança  Dart,  consiste em herdar características e comportamentos  de suas super classes
  */
}
