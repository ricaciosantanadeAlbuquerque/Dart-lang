

import 'interface_lutador.dart';

class Lutador implements InterfaceLutador {
  // atribulto
  String? _nome;
  String? _nacionalidade;
  int? _idade;
  double? _altura;
  double? _peso;
  String? _categoria;
  int? _vitoria;
  int? _derrota;
  int? _empates;
  // ============== construtor ===============
  Lutador({required String? nome, required String? nacionalidade, required int? idade, required double? altura, required double? peso, required int? vitoria, required int? derrota, required int? empates}) {
    this._setNome = (nome != null) ? nome : 'indefinido';
    this._setNacionalidade = (nacionalidade != null) ? nacionalidade : 'indefinido';
    this._setIdade = (idade != null) ? idade : 0;
    this._setAltura = (altura != null) ? altura : 0.0;
    this._setPeso = (peso != null) ? peso : 0.0;
  }
  //  ============== get and set ==============

  String? get getCategoria => this._categoria;

  void set _setCategoria(_) {
    if (this._getPeso! < 52.2) {
      this._categoria = 'Inválido';
    } else if (this._getPeso! <= 70.3) {
      this._categoria = 'Leve';
    } else if (this._getPeso! <= 83.9) {
      this._categoria = 'Médio';
    } else if (this._getPeso! <= 120.2) {
      this._categoria = 'Pesado';
    } else {
      this._categoria = 'Inválido';
    }
  }

  String? get getNome => this._nome;

  void set _setNome(String? nome) {
    this._nome = nome;
  }

  String? get _getNacionalidade => this._nacionalidade;

  void set _setNacionalidade(String? nacionalidade) {
    this._nacionalidade = nacionalidade;
  }

  int? get _getIdade => this._idade;

  void set _setIdade(int? idade) {
    this._idade = idade;
  }

  double? get _getAltura => this._altura;

  void set _setAltura(double? altura) {
    this._altura = altura;
  }

  double? get _getPeso => this._peso;

  void set _setPeso(double? peso) {
    this._peso = peso;
    this._setCategoria = '';
  }

  int? get _getVitoria => this._vitoria;

  void set _setVitoria(int? vitoria) {
    this._vitoria = vitoria;
  }

  int? get _getDerrota => this._derrota;

  void set _setDerrota(int? derrota) {
    this._derrota = derrota;
  }

  int? get _getEmpates => this._empates;

  void set _setEmpate(int? empates) {
    this._empates = empates;
  }

// Interface =========================

  @override
  void apresentar() {
    print(this.toString());
  }

  @override
  void status() {
    print("Nome: $getNome");
    print("É um Peso $getCategoria");
    print('$_getVitoria Vitórias');
    print('$_getDerrota Derrotas');
    print('$_getEmpates Empates');
  }

  @override
  void ganharLuta() {
    this._setVitoria = _getVitoria! + 1;
  }

  @override
  void perderLuta() {
    this._setDerrota = _getDerrota! + 1;
  }

  @override
  void empatarLuta() {
    this._setEmpate = _getEmpates! + 1;
  }

  @override
  String toString() {
    return 'Nome: $_nome, Nacionalidade: $_nacionalidade, Idade: $_idade, Altura: $_altura, Peso: $_peso, Categoria: $_categoria, vitoria: $_vitoria, Derrotas: $_derrota, Empates: $_empates';
  }
}
