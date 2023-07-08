import 'animal.dart';

abstract class Atropodes extends Animal {
  int? numeroPatadas;
  bool? podeVoar;
  String? tipo;

  Atropodes.terrestres(this.tipo, this.numeroPatadas, String? idade, {bool? docil, this.podeVoar}) : super.invertebrado(idade, docil: docil);

  Atropodes.aquaticos(this.tipo, this.numeroPatadas, String? idade, {bool? docil, this.podeVoar}) : super.invertebrado(idade, docil: docil);

  Atropodes.aereos(this.tipo, this.numeroPatadas, String? idade, {bool? docil, this.podeVoar}) : super.invertebrado(idade, docil: docil);

  @override
  void domir() {
    print("Dorme como um atropode");
  }

  void alimentar() {
    print("Se alimenta como um atrópode !");
  }

  void reproduzir() {
    print("Reproduz como artropodes ");
  }

  @override
  String toString() => 'Patas: $numeroPatadas, voa:$podeVoar, tipo:$tipo ' + super.toString();
}
