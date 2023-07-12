abstract class Animal {
  String? _idade;
  bool? _docil;
  bool? _coluna;

  Animal.vertebrados(this._idade, this._docil) {
    this._coluna = true;
  }

  Animal.invertebrados(this._idade, this._docil) {
    this._coluna = false;
  }

  void dormir() {
    print("Dorme como umanimal !");
  }

  // get and set

  String? get idade => this._idade;

  void set idade(String? idade) {
    this._idade = idade;
  }

  bool? get docil => this._docil;

  void set docil(bool? docil) {
    this._docil = docil;
  }

  bool? get coluna => this._coluna;


}
