class Animal {
  String? _idade;
  bool? _docil;

  Animal(this._idade, this._docil);

  void dorme() {
    print("Dorme como um animal !");
  }

  @override
  String toString() => 'Idade:$idade, Docil:$docil,';

  String? get idade => this.idade;

  void set idade(String? idade) {
    this._idade = idade;
  }

  bool? get docil => this._docil;

  void set docil(bool? docil) {
    this._docil = docil;
  }
}
