import 'mamifero.dart';

class Cao extends Mamifero {
  final String nome;
  final String raca;

  Cao({required this.nome, required this.raca, required String sexo, required String idade, bool docil = false}) : super(sexo: sexo, idade: idade, docil: docil);

  void acao() {
    print('Late como um Cão !');
  }

  @override   // Devemos  implementar e sobrepor os métodos sem escopo das classes abstratas. na classe concreta que extends tal.
  void alimintar() {
    print("Se alimenta como um cão !");
  }
}
