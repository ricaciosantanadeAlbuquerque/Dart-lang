abstract class Animal {
  
  String? idade;
  bool? docil;
  bool? coluna;

  Animal.vertebrado(this.idade, {this.docil}) {
    this.coluna = true;
  }

  Animal.invertebrado(this.idade, {this.docil}) {
    this.coluna = false;
  }

  void domir() {
    print("Dorme como uma animal");
  }

  @override
  String toString() => 'Idade: $idade, Docil: $docil';
}
