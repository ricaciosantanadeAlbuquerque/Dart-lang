import 'animal.dart';

class Gato extends Animal {
  String? nome;
  int? idade;
  Gato({String? nome, int? idade, required String tipo}) : super(tipo: tipo) {
    this.nome = nome ?? 'Indefinido';
    this.idade = idade ?? 0;
  }

  void fazerSom() {
    print("Mia como  um gato");
  }
}
