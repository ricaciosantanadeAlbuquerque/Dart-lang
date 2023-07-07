import 'animal.dart';

abstract class Mamifero extends Animal {
  String? sexo;
  String? desenvolvimento;

  Mamifero.placentarios(this.sexo, String idade, {required bool docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'placentários';
  }

  Mamifero.marsupiais(this.sexo, String idade, {required bool docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentários + bolsa Externa';
  }

  Mamifero.monotremados(this.sexo, String idade, {required bool docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('como um');
  }

  void reproduzir();
}
