import 'cachorro.dart';
import 'lobo.dart';
import 'mamifero.dart';

void main() {
  // linha de instânciamento
  var mamifero = Mamifero();
  var lobo = Lobo();
  var cachorro = Cachorro();

  mamifero.emitirSom();
  print('');
  lobo.emitirSom();
  print('');
  cachorro.emitirSom();
  print('');

  // polimorfismo de sobreposição 
}
