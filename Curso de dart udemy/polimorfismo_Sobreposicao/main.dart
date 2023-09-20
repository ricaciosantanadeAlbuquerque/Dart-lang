import 'Tartaruga.dart';
import 'arara.dart';
import 'ave.dart';
import 'cachorro.dart';
import 'canguru.dart';
import 'cobra.dart';
import 'gold_fisch.dart';
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

  print("================================================================================================");

  Canguru canguru = Canguru();
  Cachorro cachorro = Cachorro();
  Cobra cobra = Cobra();
  var tartaruga = Tartaruga();
  var goldFish = GoldFish();
  var arara = Arara();

  cachorro.locomover();
  canguru.locomover(); // Mesmo método formas diferentes
  print('');
  cobra.locomover();
  tartaruga.locomover();
  print('');
  goldFish.locomover(); // goldfish não sobrepos o métoodo locomover, portanto este objeto usa o método da sua supre classe
  peixe.locomover();
  print('');

  ave.locomover();
  arara.locomover();

  /** 
   * Polimorfismo é fazer uma mesma coisa de formas diferentes.
   */
}
