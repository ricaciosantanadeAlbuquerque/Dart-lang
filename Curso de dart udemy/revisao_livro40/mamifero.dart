import 'animal.dart';

class Mamifero extends Animal{
  String? _sexo;

  Mamifero(String? sexo,String idade,bool docil) : super(idade,docil) {
    this.sexo = sexo;
  }

  String? get sexo => this._sexo;

  void set sexo(String? sexo) => this._sexo = sexo;

  void alimentar() {
    print('Se alimenta como um mamífero');
  }
}
