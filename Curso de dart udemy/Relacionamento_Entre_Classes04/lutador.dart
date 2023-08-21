class Lutador {
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
  Lutador({required String? nome, required String? nacionalidade, required int? idade, required double altura, required double? peso, required String? categoria, required int? vitorias, required int? derrotas, required int? empates}) {
    this._nome = (nome != null) ? nome : 'indefinido';
    this._nacionalidade = (nacionalidade != null) ? nacionalidade : 'indefinido';
    this._idade = (idade != null) ? idade : 0;
    this._altura = (altura != null) ? altura : 0.0;
    this._peso = (peso != null) ? peso : 0.0;
    this._categoria = (categoria != null) ? categoria : 'indefinido';
    this._vitorias = (vitorias != null) ? vitorias : 0;
    this._derrotas = (derrotas != null) ? derrotas : 0;
    this._empates = (empates != null) ? empates : 0;
  }

// get and set  estilo arrow function


}
