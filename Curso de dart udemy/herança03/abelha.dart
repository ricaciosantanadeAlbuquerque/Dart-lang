import 'artropodes.dart';

class Abelha extends Atropodes {
  String? cor;

  Abelha(this.cor, int numeroPatas, bool podeVoar, String idade, bool docil) : super.voadores(numeroPatas, podeVoar, idade, docil);

  void voa() {
    print("Voando");
  }

  void domir() {
    print("Dorme como uma abelha");
  }

  @override
  void alimentar() {
    print("Se alimenta como uma abelha");
  }
   @override
  String toString() => 'Cor: $cor, Numero de patas: $numeroPatas, Pode voar $podeVoar, Idade: $idade, docil: $docil';
}
