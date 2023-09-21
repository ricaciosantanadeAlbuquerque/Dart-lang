abstract class Animal {
  double? _peso;
  int? _idade;
  int? _membro;

  // get and set

  double? get peso => this._peso;

  void set peso(double? peso) {
    this._peso = peso;
  }

  int? get idade => this._idade;

  void set idade(int? idade) {
    this._idade = idade;
  }

  int? get membro => this._membro;

  void set membro(int? membro) {
    this._membro = membro;
  }

  void emitirSom(); // Assinatura do método;
}
