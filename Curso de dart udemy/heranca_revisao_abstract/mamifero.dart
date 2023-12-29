import 'animal.dart';

abstract class Mamifero extends Animal {
  String? sexo;
  String? desenvolvimento;

  Mamifero.placentarios(this.sexo, idade, {dynamic docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentários';
  }

  Mamifero.marsupiais(this.sexo, idade, {dynamic docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentários + Bolsa externa';
  }

  Mamifero.monotremados(this.sexo, dynamic idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('Como um');
  }

  void reproduzir();
  
}
