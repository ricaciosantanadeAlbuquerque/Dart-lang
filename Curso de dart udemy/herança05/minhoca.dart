import 'anelideos.dart';

class Minhoca extends Anelideos {
  String? sexo;

  Minhoca({this.sexo, int? comprimento, String? tipo, bool? parasita = false, String? idade, bool? docil = false}) : super.naoParasita(comprimento, parasita, tipo, idade, docil);
  
  @override
  void domir() {
    print("Dorme como uma minhoca ");
  }

  @override
  void alimentar() {
    print("Se alimenta como uma minhoca !");
  }

  @override
  void reproduzir() {
    print(" Se reproduz como minhoca");
  }

  @override
  String toString() => 'Sexo: $sexo, ' + super.toString();
}
