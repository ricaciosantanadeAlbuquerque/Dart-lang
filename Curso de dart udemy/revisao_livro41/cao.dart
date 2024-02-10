import 'mamifero.dart';

class Cao extends Mamifero {
  String? nome;
  String? raca;

  Cao.domestico(this.nome, this.raca, {String sexo = 'Indefinido', String idade = 'Indefinido', bool docil = true}) : super.placentarios(sexo, idade, doicl: docil);

  Cao.selvagem(this.nome, this.raca, {String sexo = 'Indefinido', String idade = 'Indefinido', bool docil = false}) : super.placentarios(sexo, idade, doicl: docil);

  @override
  void dormir() {
    print('Dorme como um cão ');
  }

  void alimentar() {
    super.alimentar(); // super  refere-se a  atributos e métodos das classes superiores, se utilizado com o construtor então vai fazer referência ao contrutor da super classe.
    print('cao!');
  }

  @override
  void reproduzir() {
    print('Reproduz como um cão');
  }

  @override
  String toString() {
    return "Instace of  ${this.runtimeType} nome:$nome, raca:$raca, sexo: $sexo";
  }

  void acao() {
    print('Late como um cão');
  }
}
