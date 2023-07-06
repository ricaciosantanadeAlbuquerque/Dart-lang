import 'mamifero.dart';

class Cao extends Mamifero {
  String nome;
  String raca;

  Cao(this.nome, this.raca, {String? sexo, int? idade, bool? docil = false}) : super(sexo,idade, docil) {
    this.sexo = (sexo == null) ? 'indefinido' : sexo;
    this.idade = (idade == null) ? 0 : idade;
  }

  void acao() {
    print("Late como um cão");
  }

  String toString() => 'Nome:$nome, Raça:$raca, ' + super.toString();
}
