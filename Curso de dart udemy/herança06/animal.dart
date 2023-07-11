abstract class Animal {
  String? _idade;
  bool? _docil;

  Animal(this._idade, this._docil); // construtor  padrão

  void dormi() {
    print("Dorme como uma animal");
  }

  String? get idade {
    return this._idade;
  }

  void set idade(String? idade) {
    this._idade = idade;
  }

  bool? get docil => this._docil;

  void set docil(bool? docil) {
    this._docil = docil;
  }

 @override
  String toString() => 'Idade:$_idade,  docil:$_docil';
}
