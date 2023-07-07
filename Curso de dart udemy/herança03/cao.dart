import 'mamiferos.dart';

class Cao extends Mamifero {
  String nome;
  String raca;

  Cao.domestico(this.nome, this.raca, String sexo, String idade, {bool docil = true}) : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagem(this.nome, this.raca, String sexo, String idade, {bool docil = false}) : super.placentarios(sexo, idade, docil: docil);

  @override
  void domir() {
    print("Dorme como um cão");
  }

  @override
  void alimentar() {
    super.alimentar();
    print("Cao !");
  }

  void acao() {
    print("Late como um cao");
  }

  @override
  void reproduzir() {
    print("Reproduz como um cao");
  }
  @override
  String toString() => 'Instance of ${this.runtimeType}, nome:$nome raca:$raca sexo:$sexo';
}
