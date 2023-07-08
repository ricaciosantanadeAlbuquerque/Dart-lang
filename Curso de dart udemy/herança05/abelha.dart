import 'artropodes.dart';

class Abelha extends Atropodes {
  String? sexo;

  Abelha(String sexo, int? numeroPatadas, String? tipo, String? idade, bool? podeVoar, bool? docil) : super.aereos('Abelha', 6, '1', docil: docil, podeVoar: podeVoar);
  
  @override
  void domir() {
    print("Dorme como abelha ");
  }

  @override
  void alimentar() {
    print("Se alimenta como a belha ");
  }

  @override
  void reproduzir() => print("Como abelha");
  
  @override
  String toString() => 'Sexo:$sexo, ' + super.toString();
}
