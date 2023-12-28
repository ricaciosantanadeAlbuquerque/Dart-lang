import 'animal.dart';

class Mamifero extends Animal {
  String? sexo;

  Mamifero(this.sexo, idade, docil) : super(docil, idade: idade);

  void alimentar() {
    print('Se alimenta como um mamifero !');
  }
}
