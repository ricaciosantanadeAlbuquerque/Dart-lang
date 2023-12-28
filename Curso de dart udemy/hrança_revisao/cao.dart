import 'mamifero.dart';

class Cao extends Mamifero {
  String? nome;
  String? raca;

  Cao(this.nome, this.raca, String? sexo, {String? idade, bool docil = false}) : super(sexo,idade,docil){
    this.sexo = (sexo != null) ? sexo : 'indefinido';
    this.idade = (idade != null) ? idade : 'indefinido';
  }

  void acao() {
    print('Late como um Cão !!!');
  }
}
