import 'animal.dart';

abstract class Mamifero extends Animal {
  final String sexo;

  Mamifero({required this.sexo, required String idade, required docil}) : super(doicil: docil, idade: idade);

  void alimintar();
}

// classes  abstratas não podem ser instânciadas,  métodos que possuem  só a assinatura  na classe abstrata, devem ser sobreposto e implementados pela classe que estende a classe abstrata. 