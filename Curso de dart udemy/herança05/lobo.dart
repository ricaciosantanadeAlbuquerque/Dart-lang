import 'cao.dart';

class Lobo extends Cao {
  Lobo(String? nome, String? raca, String? sexo, String? idade, {bool? docil}) : super.selvagem(nome, raca, sexo, idade, docil: docil);

  @override
  void domir() {
    print("Dormi como um lobo !");
  }

  @override
  void alimentar() {
    print("Se alimenta como um lobo !");
  }

  @override // polimorfismo de sobreposição de métodos
  void acao() {
    print("Uiva como um lobo");
  }
  
 @override
  void reproduzir() {
    print("Como um Lobo !");
  }
}
