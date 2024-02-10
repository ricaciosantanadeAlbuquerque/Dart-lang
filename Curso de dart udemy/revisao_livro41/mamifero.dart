import 'animal.dart';

abstract class Mamifero extends Animal {
  String? sexo;
  String? desenvolvimento;

  // construtores nomeados

  Mamifero.placentarios(this.sexo, idade, {doicl}) : super.vertebrado(idade, docil: doicl) {
    this.desenvolvimento = 'Placentários';
  }

  Mamifero.marsupiais(this.sexo, idade, {docil}) : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Placentário + bolsa externa';
  }

  Mamifero.monotremado(this.sexo, idade, {docil}) : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('Como um');
  }

  void reproduzir();
}
