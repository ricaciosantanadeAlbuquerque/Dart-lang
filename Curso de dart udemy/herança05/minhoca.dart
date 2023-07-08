import 'anelideos.dart';

class Minhoca extends Anelideos {
  String sexo;

  Minhoca(this.sexo, int? comprimento, bool? parasita, String tipo, {String? idade, bool? docil}) : super.naoParasita(comprimento, parasita, tipo, idade, docil);

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
