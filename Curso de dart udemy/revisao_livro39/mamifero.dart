import 'animal.dart';

abstract class Mamifero extends Animal {
  String? sexo;

  Mamifero(this.sexo, idade,docil) : super(idade, docil: docil); // super refere-se ao construtor da super classe

  void alimentar();
}
