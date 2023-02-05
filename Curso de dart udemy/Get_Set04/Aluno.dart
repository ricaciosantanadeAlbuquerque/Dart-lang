class Aluno {
  String? _nome;
  int? _idade;
  int? _matricula;
  double? _media;
  bool _bolsita = false;

  // construtor padrão

  Aluno({required String nome, required int idade, required int matricula}) {
    this._nome = (nome != null) ? nome : '\nValor não informado!\n';
    this._idade = (idade != null) ? idade : 0;
    this._matricula = (matricula != null) ? matricula : 0;
    this._media = (media != null) ? media : 0;
  }
  // construtor nomeado

  Aluno.bolsita({required String nome, required int idade, required int matricula, required bool bolsa}) {
    this._nome = (nome != null) ? nome : "\nValor não foi infromado\n";
    this._idade = (idade != null) ? idade : 0;
    this._matricula = (matricula != null) ? matricula : 0;
    this._media = (media != null) ? media : 0;
    this._bolsita = (bolsa != null) ? bolsa : false;
    print("\nInstância : ${this.toString()}\n");
  }

  // gets and sets

  String get nome => this._nome ?? '\nO valor não foi cadastrado\n';

  void set nome(String nome) {
    if (nome != null) {
      this._nome = nome;
    }
  }

  int get idade => this._idade ?? 0;

  void set idade(int idade) {
    if (idade != null) {
      this._idade = idade;
    }
  }

  int get matricula => this._matricula ?? 0;

  void set matricula(int matricula) {
    if (matricula != null) {
      this._matricula = matricula;
    }
  }

  double get media => this._media ?? 0;

  void set media(double media) => this._media = (media != null) ? media : 0;

  bool get bolsita => this._bolsita;

  void set bolsita(bool bolsita) => this._bolsita = bolsita;

  // get costumizado ===========================================

  String get informacao => "\nNome: ${this._nome}, Idade: ${this._idade}, Matricula: ${this._matricula}, Media: ${this._media} bolsa: ${this._bolsita}\n";

  void calcularMeida({required double num1, required double num2, required double num3}) {
    this._media = (num1 + num2 + num3) / 3;
    if (this._media! < 4) {
      print("\nReprovado!\n");
    } else if (this._media! <= 6) {
      print("\nVocê recuperação com a Media: ${this._media}\n");
    } else {
      print("\nAprovado ! com a $_media\n");
    }
  }

  void pagarMensalidade() => (this._bolsita == true) ? print('\nValor pago com desconto\n') : print('\npagar  o valor total\n');
}
