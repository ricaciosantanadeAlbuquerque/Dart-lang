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
  Lutador({required String? nome, required String? nacionalidade, required int? idade, required double? altura, required double? peso, required String? categoria, required int? vitorias, required int? derrotas, required int? empates}) {
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

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome; // o atributo nome recebe o parâmetro nome

  String? get nacionalidade => this._nacionalidade;

  void set nacionalidade(String? nacionalidade) => this._nacionalidade = nacionalidade;

  int? get idade => this._idade;

  void set idade(int? idade) => this._idade = idade;

  double? get altura => this._altura;

  void set altura(double? altura) => this._altura = altura;

  double? get peso => this._peso;

  void set peso(double? peso) => this._peso = peso;

  String? get categoria => this._categoria;

  void set categoria(String? categoria) => this._categoria = categoria;

  int? get vitorias => this._vitorias;

  void set vitorias(int? vitoria) => this._vitorias = vitorias;

  int? get derrotas => this._derrotas;

  void set derrotas(int? derrotas) => this._derrotas = derrotas;

  int? get empates => this._empates;

  void set empates(int? empates) => this._empates = empates;

  // interface
}
