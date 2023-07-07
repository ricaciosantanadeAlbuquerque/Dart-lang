import 'animal.dart';

class Mamifero extends Animal {
  String? sexo;

  Mamifero({required this.sexo, required String? idade, required bool? docil}) : super(idade: idade, docil: docil);

  void alimentar() {
    print("Se alimenta como um mamifero !");
  }
  
  @override
  String toString() => 'Sexo:$sexo, ' + super.toString();
}
