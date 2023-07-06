class Animal {
  int? idade;
  bool? docil;

  Animal({required this.idade, required this.docil});

  void dorme() {
    print("Dorme como um animal !");
  }

  @override
  String toString() => 'Idade: $idade, Docil: $docil';
}
