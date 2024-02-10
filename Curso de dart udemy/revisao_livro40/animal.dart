class Animal {
  String? _idade;
  bool? _docil;

  Animal(String? idade, bool? docil) {
    this.idade = idade;
    this.docil = docil;
  }

  String? get idade => this._idade;

  void set idade(String? idade) => this._idade = idade;

  bool? get docil => this._docil;

  void set docil(bool? docil) => this._docil = docil;

  void dorme() {
    print('Dorme como um animal');
  }
}
