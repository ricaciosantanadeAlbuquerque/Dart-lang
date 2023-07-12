import 'mamifero.dart';

class Cao extends Mamifero {
  String? _nome;
  String? _raca;

  Cao.domestico(this._nome, this._raca, {String? sexo, String? idade, bool? docil = true}) : super.placentario(sexo, idade: idade, docil: docil) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.raca = (raca != null) ? raca : 'indefinido';
    this.sexo = (sexo != null) ? sexo : 'indefinido';
    this.idade = (idade != null) ? idade : 'indefinido';
  }
  Cao.selvagem(this._nome, this._raca, {String? sexo, String? idade, bool? docil = true}) : super.placentario(sexo, idade: idade, docil: docil) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.raca = (raca != null) ? raca : 'indefinido';
    this.sexo = (sexo != null) ? sexo : 'indefinido';
    this.idade = (idade != null) ? idade : 'indefinido';
  }

  void acao() => print("Late como um cão! ");

  @override
  void reproduzir() => print('Como um cão !');

  @override
  void dormir() => print("Dorme como um cão !");

  void alimentar() {
    super.alimentar();
    print("Cão !");
  }
  // get and set

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  String? get raca => this._raca;

  void set raca(String? raca) {
    this._raca = raca;
  }
}
