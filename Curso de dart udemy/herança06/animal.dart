abstract class Animal {
  final String idade;
  final bool doicil;

  Animal({required this.idade, required this.doicil}); // construtor  padrão

  void dormi() {
    print("Dorme como uma animal");
  }
}
