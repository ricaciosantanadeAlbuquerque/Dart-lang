import 'animal.dart';

abstract class Mamifero extends Animal {
  String? sexo;
  String? desenvolvimento;

  Mamifero.placentarios(this.sexo, String? idade, bool? docil) : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Placentários';
  }

  Mamifero.marsupiais(this.sexo, String? idade, bool? docil) : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Placentários + bolsa';
  }

  Mamifero.monotremados(this.sexo, String? idade, bool? docil) : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta como um,');
  }

  void reproduzir(); // Métodos sem  escopo em classes abstratas devem ser sobrepostos  e implementados na classe concreta

  @override
  String toString() => 'Sexo:$sexo, Desenvolvimento: $desenvolvimento, ' + super.toString();
}
