class Animal {
  String? idade;
  bool? docil;

  Animal(this.docil, {this.idade});

  void dormir() {
    print('Dorme como um animal !');
  }
}
