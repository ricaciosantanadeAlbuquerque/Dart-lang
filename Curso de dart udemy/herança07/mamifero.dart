import 'animal.dart';

abstract class Mamifero extends Animal {
  String? _sexo;

  Mamifero.placentario(this._sexo, {String? idade, bool? docil}) : super.vertebrados(idade, docil);

  Mamifero.marsupial(this._sexo, {String? idade, bool? docil}) : super.vertebrados(idade, docil);

  Mamifero.monotremados(this._sexo, {String? idade, bool? docil}) : super.vertebrados(idade, docil);

  // equivalente a sobrecarga de construtores

  void reproduzir();

  void alimentar() {
    print("Se alimenta como um Mamifero !");
  }
}
