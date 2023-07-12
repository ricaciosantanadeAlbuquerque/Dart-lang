import 'animal.dart';

abstract class Mamifero extends Animal {
  String? _sexo;
  String? _desenvolvimento;

  Mamifero.placentario(this._sexo, {String? idade, bool? docil}) : super.vertebrados(idade, docil) {
    this._desenvolvimento = 'Placentário';
  }

  Mamifero.marsupial(this._sexo, {String? idade, bool? docil}) : super.vertebrados(idade, docil) {
    this._desenvolvimento = 'placentário + bolsa';
  }

  Mamifero.monotremados(this._sexo, {String? idade, bool? docil}) : super.vertebrados(idade, docil) {
    this._desenvolvimento = 'Ovo';
  }

  // equivalente a sobrecarga de construtores

  void reproduzir(); // assinatura de método, deve ser sobreposta por quem estender Mamifero()

  void alimentar() {
    print("Se alimenta como um ");
  }
  @override
  String toString() => 'Sexo:$_sexo, Desenvolvimento:$_desenvolvimento '+super.toString();
  // get and set

  String? get sexo => this._sexo;

  void set sexo(String? sexo) {
    this._sexo = sexo;
  }
}
