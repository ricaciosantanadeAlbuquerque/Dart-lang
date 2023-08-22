import 'interface_lutador.dart';

class Lutador implements InterfaceLutador {
  // atributos
  String? _nome;
  String? _nacionalidade;
  int? _idade;
  double? _altura;
  double? _peso;
  String? _categoria;
  int? _vitorias;
  int? _derrotas;
  int? _empates;

// construtor
  Lutador({required String? nome, required String? nacionalidade, required int? idade, required double? altura, required double? peso, required int? vitorias, required int? derrotas, required int? empates}) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.nacionalidade = (nacionalidade != null) ? nacionalidade : 'indefinido';
    this.idade = (idade != null) ? idade : 0;
    this.altura = (altura != null) ? altura : 0.0;
    this.peso = (peso != null) ? peso : 0.0;
    this.vitorias = (vitorias != null) ? vitorias : 0;
    this.derrotas = (derrotas != null) ? derrotas : 0;
    this.empates = (empates != null) ? empates : 0;
  }

// get and set  estilo arrow function

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome; // o atributo nome recebe o parâmetro nome

  String? get nacionalidade => this._nacionalidade;

  void set nacionalidade(String? nacionalidade) => this._nacionalidade = nacionalidade;

  int? get idade => this._idade;

  void set idade(int? idade) => this._idade = idade;

  double? get altura => this._altura;

  void set altura(double? altura) => this._altura = altura;

  double? get peso => this._peso;

  void set peso(double? peso) {
    this._peso = peso;

    this._setCategoria = null; // não  vamos usar o valor passado como parametro
  }

  String? get categoria => this._categoria;

  void set _setCategoria(String? categoria) {
    if (this.peso! < 52.2) {
      this._categoria = 'Inválido';
    } else if (this.peso! <= 70.3) {
      this._categoria = 'Leve';
    } else if (this.peso! <= 83.9) {
      this._categoria = 'Médio';
    } else if (this.peso! <= 120.2) {
      this._categoria = 'Pesado';
    } else {
      print("Inválido");
    }
  }

  int? get vitorias => this._vitorias;

  void set vitorias(int? vitorias) => this._vitorias = vitorias;

  int? get derrotas => this._derrotas;

  void set derrotas(int? derrotas) => this._derrotas = derrotas;

  int? get empates => this._empates;

  void set empates(int? empates) => this._empates = empates;

  // interface

  @override
  void apresentar() {
    print("Lutador: $nome");
    print("Origem: $nacionalidade");
    print("$idade anos de idade ");
    print("$altura de altura");
    print("Peando ${peso} em KG");
    print("Ganhou: $vitorias");
    print("Perdeu: $derrotas");
    print("Empatou: $empates");
  }

  @override
  void status() {
    print(this.toString());
  }

  @override
  void ganharLuta() {
    this.vitorias = this.vitorias! + 1;
  }

  @override
  void perderLuta() {
    this.derrotas = this.derrotas! + 1;
  }

  @override
  void empatarLuta() {
    this.empates = this.empates! + 1;
  }

  @override
  String toString() => 'Nome: $nome, Peso: $peso, vitórias: $vitorias, Derrotas, $derrotas Empates: $empates';
}
