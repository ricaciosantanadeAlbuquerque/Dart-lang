import '../Encapsulamento01/interface.dart';
import 'intercafe.dart';

class Lutador implements InterfaceLutado {
  String _nome;
  String _nacionalidade;
  int _idade;
  double _altura;
  double _peso;
  String _categoria;
  int _vitorias;
  int _derrota;
  int _empate;

  Lutador(this._nome, this._nacionalidade, this._idade, this._altura, this._peso, this._categoria, this._vitorias, this._derrota, this._empate);

  String get nome => this._nome;

  void set nome(String nome) {
    this._nome = nome;
  }

  String get nacionalidade => this._nacionalidade;

  void set nacionalidade(String nacionalidade) {
    this._nacionalidade = nacionalidade;
  }

  int get idade => this._idade;

  void set idade(int idade) {
    this._idade = idade;
  }

  double get peso => this._peso;

  void set peso(double peso) {
    this._peso = peso;
    this.categoriaLuta = this._peso;
  }

  double get altura => this._altura;

  void set altura(double altura) {
    this._altura = altura;
  }

  String get categoria => this._categoria;

  // set personalizado
  void set categoriaLuta(double valor) {
    if (this._peso < valor) {
      this._categoria = 'Inválido';
    } else if (this._peso < valor) {
      this._categoria = 'Leve';
    } else if (this._peso < valor) {
      this._categoria = 'Médio';
    } else if (this._peso < valor) {
      this._categoria = 'Pesado';
    } else {
      this._categoria = 'Inválido';
    }
  }

  int get vitoria => this._vitorias;

  void set vitoria(int vitoria) {
    this._vitorias = vitoria;
  }

  int get derrota => this._derrota;

  void set derrota(int derrota) {
    this._derrota = derrota;
  }

  int get empates => this._empate;

  void set empates(int empates) {
    this._empate = empates;
  }

  // lista de serviçõs

  @override
  void apresentar() {
    print("Lutador: ${this.nome}");
    print("Origem: ${this.nacionalidade}");
    print("${this.idade} anos");
    print("${this.altura} em Metros ");
    print("Pesando ${this.peso}");
    print("ganhou: ${this.vitoria}");
    print("Perdeu: ${this.derrota}");
    print("Empate: ${this.empates}");
    print("");
    print("");
  }

  @override
  void status() {
    print(this.nome);
    print("é um peso ${this.categoria}");
    print("${this.vitoria}vitórias.");
    print("${this.derrota} derrotas");
    print("${this.empates} Empates");
    print("");
  }

  @override
  void ganharLuta() {
    this.vitoria = this.vitoria + 1;
  }

  @override
  void perderLuta() {
    this.derrota = this.derrota - 1;
  }

  @override
  void empatarLuta() {
    this.empates = this.empates + 1;
  }
}
