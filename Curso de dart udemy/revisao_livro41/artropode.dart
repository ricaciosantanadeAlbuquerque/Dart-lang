import 'animal.dart';

abstract class Artropode extends Animal {
  String? sexo;
  String? desenvolvimento;

  Artropode.crustaceo(this.sexo, String? idade, {bool? doicl}) : super.invertebrado(idade, docil: doicl) {
    this.desenvolvimento = 'Ovo / forma direta';
  }

  Artropode.inseto(this.sexo, String? idade, {bool? doicl}) : super.invertebrado(idade, docil: doicl) {
    this.desenvolvimento = 'Ovo/Larva';
  }

  Artropode.arachnida(this.sexo, String idade, {bool? docil}) : super.invertebrado(idade, docil: docil) {
    this.desenvolvimento = 'forma direta';
  }

  void alimentar() {
    print('Alimentar como uma');
  }

  void reproduz(); // método sem escopo ou método abstrato
}
