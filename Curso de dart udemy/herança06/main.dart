import 'animal.dart';
import 'cao.dart';

void main() {
  // Animal animal = new Animal(doicil: true, idade: '7' );
  /**
   * Abstract classes can't be instantiated.
   * Try creating an instance of a concrete subtype.
   */

  Cao cao = Cao('Lulu', 'Vira lata', sexo: 'femea', idade: '7', docil: true);
  Cao cao1 = Cao('Lulu', 'Vira lata', sexo: 'femea', idade: '7', docil: true);
  print(cao.nome);
  //cao.idade = '12';
  print(cao.idade);
  cao.nome = 'mel';
  print(cao.nome);
  print(cao);
  cao
    ..nome = 'lulu'
    ..raca = 'buldog'
    ..sexo = ' macho'
    ..idade = '2'
    ..docil = true; // operador em cascata ..
  print('');
  print(cao);

  print('${cao.nome}, ${cao.docil == true ? 'É docil' : 'Não é docil'}');
  print(identical(cao, cao1));
  /** Apesar dos objetos terem os mesmos valores de atribulto,  cada  objeto é único na memória possuindo um código hash que os diferencia  */
     print('');
  cao1
    ..dormi()
    ..alimintar()
    ..acao();
}
