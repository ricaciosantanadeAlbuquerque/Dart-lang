import 'animal.dart';
import 'cao.dart';

void main() {
  // Animal animal = new Animal(doicil: true, idade: '7' );
  /**
   * Abstract classes can't be instantiated.
   * Try creating an instance of a concrete subtype.
   */

  Cao cao = Cao(nome: 'Toto', idade: '7', raca: 'poodle', sexo: 'Femia', docil: true);
}
