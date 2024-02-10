abstract class Animal {
  // atributos de instância
  String? idade;
  bool? docil;
  bool? coluna;

//  construtores Nomeados
  Animal.vertebrado(this.idade, {this.docil}) {
    this.coluna = true;
  }

  Animal.invertebrado(this.idade, {this.docil}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dorme como um Animal');
  }
}
