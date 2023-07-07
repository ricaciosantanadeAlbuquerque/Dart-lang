import 'animal.dart';

abstract class Atropodes extends Animal {
  int? numeroPatas;
  bool? podeVoar;
  String? especie;

  Atropodes.voadores(this.numeroPatas, this.podeVoar, String idade, bool docil) : super.invertebrados(idade, docil: docil) {
    this.especie = 'abelha';
  }

  Atropodes.aquatico(this.numeroPatas, this.podeVoar, String idade, bool docil) : super.invertebrados(idade, docil: docil) {
    this.especie = 'barata de água';
  }

  void alimentar() {
    print("Se alimenta como um artropode !");
  }
}
