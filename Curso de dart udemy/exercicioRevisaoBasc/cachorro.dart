import 'animal.dart';

class Cachorro extends Animal {
  final String nome;
  final int idade;
  
  Cachorro({required this.nome, required this.idade, required String tipo})
      : super(tipo: tipo);

  @override
  void fazerSom() {
    print("Late como um cachorro !");
  }
}
