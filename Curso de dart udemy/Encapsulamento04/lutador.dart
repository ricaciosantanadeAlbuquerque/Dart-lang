import 'interface_lutador.dart';

class Lutador implements InterfaceLutador {
  // atribulto =====
  String? _nome;
  String? _nacionalidade;
  int? _idade;
  double? _altura;
  double? _peso;
  String? _categoria;
  int? _vitorias;
  int? _derrotas;
  int? _empates;
  // construtor nomeado ===
  Lutador.lutar({required String nome, required double altura, required String nacionalidade, required int idade, required double peso, required int vitorias, required int derrotas, required int empates}) {
    this.nome = nome;
    this.nacionalidade = nacionalidade;
    this.idade = idade;
    this.altura = altura;
    this.peso = peso;
    this.vitoria = vitorias;
    this.derrota = derrotas;
    this.empates = empates;
  }
  // get and set padrão
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
    this.categoriaAUTO = peso;
  }

  String? get categoria => this._categoria;

  void set categoriaAUTO(double? peso) {
    if (peso! < 52.2) {
      this._categoria = 'Inválido';
    } else if (peso <= 70.3) {
      this._categoria = 'Leve';
    } else if (peso <= 83.9) {
      this._categoria = 'Medio';
    } else if (peso <= 120.2) {
      this._categoria = 'Pesado';
    } else {
      this._categoria = 'Inválido';
    }
  }

  int? get vitoria => this._vitorias;

  void set vitoria(int? vitoria) {
    this._vitorias = vitoria;
  }

  int? get derrota => this._derrotas;

  void set derrota(int? derrota) {
    this._derrotas = derrota;
  }

  int? get empates => this._empates;

  void set empates(int? empates) {
    this._empates = empates;
  }

  // interface === lista de serviços
  @override
  void apresentar() {
    print('Lutador: ${this.nome}\n');
    print('Origem: ${this.nacionalidade}\n');
    print('${this.idade} anos');
    print('${this.altura} em metros\n');
    print('Pesando: ${this.peso}\n');
    print('Ganhou: ${this.vitoria}\n');
    print('Perdeu: ${this.derrota}\n');
    print("Empatou: ${this.empates}\n");
  }

  @override
  void status() {
    print("${this.nome}");
    print("é um peso ${this.peso}\n");
    print("${this.vitoria} Vitórias\n");
    print("${this.derrota} derrotas\n");
    print("${this.empates} empates\n");
  }

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
    this.empates = this.empates! + 1;
  }
}
