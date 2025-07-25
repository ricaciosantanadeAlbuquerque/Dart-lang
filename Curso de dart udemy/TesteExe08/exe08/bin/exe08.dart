import 'package:exe08/animal.dart';
import 'package:exe08/cachorro.dart';
import 'package:exe08/gato.dart';

void main(List<String> arguments) {
  Animal animal = Animal(som: 'Som de mamifero', tipo: 'Mamifero');
  assert(animal != null); // so lança exceção se for false
  print(animal.falar());
  /**
   * animal não está nulo por tanto a afirma é verdadeira e não há o lançamento da exceção'
   */

  Gato gato = Gato(nome: 'Nina', sexo: 'femea', som: 'Mia', tipo: 'Mamifero');
  assert(gato != null);
  print(gato.falar());

  Cachorro cachorro = Cachorro(
    nome: 'Max',
    sexo: 'Macho',
    som: 'Late',
    tipo: 'Mamifero',
  );

  assert(cachorro != null);

  print(cachorro.falar());
}
