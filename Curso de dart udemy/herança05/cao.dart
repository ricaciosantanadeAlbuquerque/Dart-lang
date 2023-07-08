import 'mamifero.dart';

class Cao extends Mamifero {
  String? nome;
  String? raca;

  Cao.domestico(this.nome, this.raca, String? sexo, String? idade, {bool docil = true}) : super.placentarios(sexo, idade, docil) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.raca = (raca != null) ? raca : 'indefinido';
    this.sexo = (sexo != null) ? sexo : 'indefinido';
    this.idade = (idade != null) ? idade : 'indefinido';
  }

  Cao.selvagem(this.nome, this.raca, String? sexo, String? idade, {bool docil = false}) : super.placentarios(sexo, idade, docil) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.raca = (raca != null) ? raca : 'indefinido';
    this.sexo = (sexo != null) ? sexo : 'indefinido';
    this.idade = (idade != null) ? idade : 'indefinido';
  }

  @override
  void reproduzir() {
    print("Reproduz como uma cão");
  }

  @override
  void alimentar() {
    super.alimentar();
    print('Cão');
  }

  @override
  void domir() {
    print("Dorme como um cão ");
  }

  void cao() => print("Late como um Cão ");

  @override
  String toString() => 'Nome: $nome, Raça:$raca, ' + super.toString();
}

/**
 * Através da palavra resevada super podemos acessar todos os atribultos e métodos da super classe inclusive seus construtores
 */