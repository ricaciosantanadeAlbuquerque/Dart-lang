import 'animal.dart';
import 'ave.dart';
import 'mamifero.dart';
import 'peixe.dart';
import 'reptil.dart';

void main() {
  // var animal = new Animal();  CLASSES ABSTRATAS NÃO PODEM SER INSTÂNCIADAS;

  Mamifero mamifero = Mamifero(); // linha de Instânciamento
  Peixe peixe = Peixe();
  var ave = Ave();
  var reptil = Reptil();

// =====================================================================================================================

  mamifero
    ..alimentar()
    ..locomover() // correndo
    ..emitirSom();

  print('');

  peixe
    ..alimentar()
    ..locomover() // Nadando
    ..emitirSom();

  print('');

  ave
    ..alimentar()
    ..emitirSom()
    ..locomover();

  print('');

  reptil
    ..alimentar()
    ..locomover()
    ..emitirSom();

 // .. Operador em cascata ! permite evocar vários métodos ou atibultos de um mesmo objeto 
}
