import 'animal.dart';

abstract class Atropode extends Animal {
  String? _sexo;
  String? _desenvolvimento;

  Atropode(thi_sexo, String? idade, bool? docil) : super.invertebrados(idade, docil) {
    this._desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print("Se alimenta como um ");
  }

  void reproduzir();

  // get and set

  String? get sexo => this._sexo;

  void set sexo(String? sexo) {
    this._sexo = sexo;
  }

  String? get desenvolvimento => this._desenvolvimento;

  void set desenvolvimento(String? desenvolvimento) {
    this._desenvolvimento = desenvolvimento;
  }
}
