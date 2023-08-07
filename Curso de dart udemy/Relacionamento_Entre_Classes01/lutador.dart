import 'interface_lutador.dart';

class Lutador1 implements InterfaceLutador {
  String? _nome;
  String? _nacionalidade;
  int? _idade;
  double? _altura;
  double? _peso;
  String? _categoria;
  int? _vitoria;
  int? _derrota;
  int? _empate;

  Lutador1({required String? nome, required String? nacionalidade, int? idade, double? altura, double? peso, int? vitoria, int? derrota, int? empate}) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.nacionalidade = (nacionalidade != null) ? nacionalidade : 'indefinido';
    this.idade = (idade != null) ? idade : 0;
    this.altura = (altura != null) ? altura : 0.0;
    this.peso = (peso != null) ? peso : 0.0;
    this.vitoria = (vitoria != null) ? vitoria : 0;
    this.derrota = (derrota != null) ? derrota : 0;
    this.empate = (empate != null) ? empate : 0;
  }
  // get ande set

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  String? get nacionalidade => this._nacionalidade;

  void set nacionalidade(String? nacionalidade) {
    this._nacionalidade = nacionalidade;
  }

  int? get idade => this._idade;

  void set idade(int? idade) {
    this._idade = idade;
  }

  double? get altura => this._altura;

  void set altura(double? altura) {
    this._altura = altura;
  }

  double? get peso => this._peso;

  void set peso(double? peso) {
    this._peso = peso;
    this.categoria = this._peso; // não usa o atribulto
  }

  String? get categoria => this._categoria;

  void set categoria(_) {
    if (this._peso! < 52.2) {
      this._categoria = 'Inválido';
    } else if (this._peso! <= 70.3) {
      this._categoria = 'Leve';
    } else if (this._peso! <= 83.9) {
      this._categoria = 'Médio';
    } else if (this._peso! <= 120) {
      this._categoria = 'Pesado';
    } else {
      this._categoria = 'inválido';
    }
  }

  int? get vitoria => this._vitoria;

  void set vitoria(int? vitoria) {
    this._vitoria = vitoria;
  }

  int? get derrota => this._derrota;

  void set derrota(int? derrota) {
    this._derrota = derrota;
  }

  int? get empate => this._empate;

  void set empate(int? empate) {
    this._empate = empate;
  }

  

  // interface
  @override
  void ganharLuta() {
    this.vitoria = this.vitoria! + 1;
  }

  @override
  void perderLuta() {
    this.derrota = this.derrota! + 1;
  }

  @override
  void empatarLuta() {
    this.empate = this.empate! + 1;
  }

  @override
  void status() {
    print('Nome: $nome');
    print('é um peso: $peso');
    print('$vitoria vitórias');
    print('$derrota derrotas');
    print('$empate Empates');
  }

  @override
  void apresentar() {
    print(this.toString());
  }

  @override
  String toString() {
    return 'Nome: $_nome, Nacionalidade: $_nacionalidade, Idade: $_idade, Altura: $_altura, Peso: $_peso, Categoria: $_categoria, Vitórias: $_vitoria, Derrotas: $_derrota, Empate: $_empate';
  }
}
