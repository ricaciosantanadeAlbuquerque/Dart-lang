import 'animal.dart';

class Mamifero extends Animal {
  String? sexo;

  Mamifero(this.sexo, int? idade,  bool? docil) : super(idade: idade, docil: docil);

  void alimentar() {
    print("Se alimenta como  um mamifero ");
  }

  String toString() => 'Sexo: $sexo, ' + super.toString();
}
