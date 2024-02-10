import 'mamifero.dart';

class Cao extends Mamifero {
  String? _nome;
  String? _raca;

  Cao(String? nome, String? raca, String? sexo, {String idade = '3', bool docil = false}) : super(sexo, idade, docil) {
    this.nome = (nome != null) ? nome : 'Indefinido';
    this.raca = (raca != null) ? raca : 'Indefinido';
    this.sexo = (sexo != null) ? sexo : 'Indefinido';
  }

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome;

  String? get raca => this._raca;

  void set raca(String? raca) => this._raca = raca;

  void cao() {
    print('Late como um Cão');
  }
}
