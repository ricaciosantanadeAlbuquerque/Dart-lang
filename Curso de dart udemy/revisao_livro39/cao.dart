import 'mamifero.dart';

class Cao extends Mamifero {
  String? nome;
  String? raca;

  Cao(this.nome, this.raca, String? sexo,{String? idade, bool? docil = false}) : super(sexo, idade, docil) {
    this.idade = (idade != null) ? idade : 'Indefinido';
    this.raca = (raca != null) ? raca : 'Indefinido';
    this.nome = (nome != null) ? nome : 'Indefinido';
    this.sexo = (sexo != null) ? sexo : 'Indefinido';
    this.docil = (docil != null) ? docil : false;
  }

  void cao() {
    print('Late como um Cão');
  }

  @override
  void dorme() {
    print('Dorme como um animal;');
  }

  @override
  void alimentar() {
    print('Como um Mamifero!');
  }
}
