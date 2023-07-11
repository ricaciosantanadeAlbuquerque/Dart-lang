import 'animal.dart';

abstract class Mamifero extends Animal {
  String? _sexo;

  Mamifero(this._sexo, String? idade, bool docil) : super(idade, docil);

  void alimintar();

  String? get sexo => this._sexo;

  void set sexo(String? sexo) {
    this._sexo = sexo;
  }

  @override
  String toString() => 'Sexo:$_sexo ' + super.toString();
}

// classes  abstratas não podem ser instânciadas,  métodos que possuem  só a assinatura  na classe abstrata, devem ser sobreposto e implementados pela classe que estende a classe abstrata. 