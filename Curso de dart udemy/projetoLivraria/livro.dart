import 'autor.dart';
import 'editora.dart';
import 'interface_livro.dart';

class Livro implements InterfaceLivro {
  // atribultos ou variáveis da classe
  String? _titulo;
  int? _anoPublicacao;
  double? _preco;
  int? _nota;
  int? _quantidade;
  Editora? _editora;
  List<Autor> _listAutores = [];
  // construtor
  Livro({required String titulo, required int anoPublicacao, required double preco, required int nota, required int quantidade, required Editora editora, required Autor autor}) {
    this.titulo = (titulo.isNotEmpty) ? titulo : 'valor não informado';
    this.anoPublicacao = (anoPublicacao > 0) ? anoPublicacao : 2000;
    this.preco = (preco > 0) ? preco : 50;
    this.nota = (nota > 0) ? nota : 0;
    this.quantidade = (quantidade > 0) ? quantidade : 1;
    this.editora = editora;
    this._listAutores.add(autor);
  }
// get ande set
  String? get titulo => this._titulo;

  void set titulo(String? titulo) => this._titulo = titulo;

  int? get anoPublicacao => this._anoPublicacao;

  void set anoPublicacao(int? anoPublicacao) => this._anoPublicacao = anoPublicacao;

  double? get preco => this._preco;

  void set preco(double? preco) => this._preco = preco;

  int? get nota => this._nota;

  void set nota(int? nota) => this._nota = nota;

  int? get quantidade => this._quantidade;

  void set quantidade(int? quantidade) => this._quantidade = quantidade;

  Editora? get editora => this._editora;

  void set editora(Editora? editora) {
    this._editora = editora;
  }

  List<Autor> get listaAutores => this._listAutores;

  // interface

  @override
  bool disponivel() {
    return false;
  }

  @override // polimorfismo se sobreposição de Métodos
  int atualizarNota() {
    return 0;
  }

  void adicionarAutor(Autor objeto) {
    this._listAutores.add(objeto);
  }

  void removerAutor(Autor objeto) {
    this._listAutores.remove(objeto);
  }
}
