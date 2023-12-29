import 'mamifero.dart';

class Cao extends Mamifero {
  String? nome;
  String? raca;

  Cao.domestico(this.nome, this.raca, String? sexo, {String idade = 'Indefinido', bool docil = true}) : super.placentarios(sexo, idade, docil: docil) {
    sexo = (sexo != null) ? sexo : 'indefinido';
  }

  // Cao(String sexo,String idade) : super.placentarios(sexo, idade); NÃO VAMOS CRIAR UM CONSTRUTOR PADRÃO

  Cao.selvagem(this.nome, this.raca, String? sexo, {String idade = 'Indefinido', bool docil = false}) : super.placentarios(sexo, idade, docil: docil) {
    sexo = (sexo != null) ? sexo : 'indefinido';
  }

  @override
  void dormir() {
    print('Dorme como um cao !');
  }

  @override
  void alimentar() {
    super.alimentar(); // super.   possibilita acessar os métodos e atributos das super classes
    print('Cão');
  }

  @override
  void reproduzir() {
    print('Reproduz como um cão !');
  }

  void acao() {
    print('Late como um cao!');
  }
  
  @override
  String toString() => 'Instance of ${this.runtimeType}, nome: $nome, Raca: $raca, sexo:$sexo';
}
