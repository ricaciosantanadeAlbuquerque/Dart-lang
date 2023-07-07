import 'animal.dart';

class Mamifero extends Animal {
  String? _sexo;

  Mamifero(this._sexo, String? idade, bool? docil) : super(idade, docil);

  void alimentar() {
    print("Se alimenta como um mamifero !");
  }

  @override
  String toString() => 'Sexo:$sexo, ' + super.toString();

  String? get sexo => this._sexo;

  void set sexo(String? sexo) {
    this._sexo = sexo;
  }
}
