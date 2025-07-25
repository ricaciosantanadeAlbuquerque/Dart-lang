import 'package:exe08/animal.dart';
import 'package:exe08/cachorro.dart';
import 'package:exe08/gato.dart';
import 'package:test/test.dart';

void main() {
  Animal animal = Animal(som: 'Som de mamifero', tipo: 'Mamifero');
  Gato gato = Gato(nome: 'Nina', sexo: 'femea', som: 'Mia', tipo: 'Mamifero');
  Cachorro cachorro = Cachorro(
    nome: 'Max',
    sexo: 'Macho',
    som: 'Late',
    tipo: 'Mamifero',
  );
  group('Testando a instância de animal cachorro e gato', () {
    test('Testando os objetos Animal Gato e Cachorro', () {
      expect([
        animal.falar(),
        gato.falar(),
        cachorro.falar(),
      ], equals(['Som de mamifero', 'Mia como Gato', 'Late como um cão']));

      expect(
        gato.falar(),
        anyOf([
          equals('Mia como Gato'),
          equals('Late como um cão'),
          equals('Som de mamifero'),
        ]),
      );
    });

    test('Testando cachorro', () {
      expect(cachorro.falar(), allOf([equals('Late como um cão'),equals('Som de mamifero'),]));
    });
  });

  // allOf() todos devem ser verdadeiros para ser verdade,
  // anyOf() Basta que um seja verdade que será verdade.
  // allOf() da errado porque  cachorro.falar() não retorna Som de mamifero
  // e para que seja verdade no allOf() todos devem ser verdade
}
