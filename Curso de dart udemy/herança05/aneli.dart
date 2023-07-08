import 'animal.dart';

abstract class Anelideos extends Animal {
  int? comprimento;
  bool? parasita;
  String tipo;

  Anelideos.naoParasita(this.comprimento, this.parasita, this.tipo, String? idade, bool? docil) : super.invertebrado(idade, docil: docil);

  void alimentar();

  void reproduzir();

  @override
  String toString() {

    return 'comprimento: $comprimento, parasita:$parasita, tipo:$tipo' + super.toString();
    
  }
}
