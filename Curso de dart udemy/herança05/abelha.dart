import 'artropodes.dart';

class Abelha extends Atropodes {
  String? sexo;

  Abelha({String? sexo, int? numeroPatadas, String? tipo, String? idade, bool? podeVoar, bool? docil}) : super.aereos(tipo, numeroPatadas, idade, docil: docil, podeVoar: podeVoar) {
    this.sexo = (sexo != null) ? sexo : 'indefinidos';
    this.numeroPatadas = (numeroPatadas != null) ? numeroPatadas : 0;
    this.tipo = (tipo != null) ? tipo : 'indefinido';
    this.idade = (idade != null) ? idade : 'indefinido';
    this.podeVoar = (podeVoar != null) ? podeVoar : false;
    this.docil = (docil != null) ? docil : false;
  }

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
