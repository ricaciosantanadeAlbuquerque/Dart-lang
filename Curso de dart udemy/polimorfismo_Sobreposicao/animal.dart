abstract class Animal {
  // atributos

  double? _peso;
  int? _idade;
  int? _membors;

// get and set
  double? get peso => this._peso;

  void set peso(double? peso) => this._peso = peso; // altera o valot do atributo peso

  int? get idade => this._idade;

  void set idade(int? idade) => this._idade = idade;

  int? get membro => this._membors;

  void set membro(int? membro) => this._membors = membro;

  // Métodos abtratos {OU seja só  a assinatura do método}

  void locomover();

  void alimentar();

  void emitirSom();
}
