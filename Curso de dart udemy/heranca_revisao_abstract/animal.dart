abstract class Animal { 
  // atributos de instância
  String? idade;
  bool? docil;
  bool? coluna;

// construtores nomeados
  Animal.vertebrados(this.idade, {this.docil}) {
    this.coluna = true;
  }

  Animal.invertebrados(this.idade, {this.docil}) {
    this.coluna = false;
  }
// método de instância
  void dormir() {
    print('Dorme como um animal');
  }
}
