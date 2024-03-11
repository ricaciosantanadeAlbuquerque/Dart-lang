import 'autor.dart';
import 'editora.dart';

abstract class Livro {
  String? _titulo;
  int? _anoPublicacao;
  double? _preco;
  Editora? _editora;
  List<Autor>? _listAutor = [];

  Livro({required String titulo, required int anoPublicacao, required double preco, required Editora editora}) {
    this.titulo = titulo;
    this.anoPublicacao = anoPublicacao;
    this.preco = preco;
    this.editora = editora;
  }

  String? get titulo => this._titulo;

  void set titulo(String? titulo) => this._titulo = titulo;

  int? get anoPublicacao => this._anoPublicacao;

  void set anoPublicacao(int? anoPublicacao) => this._anoPublicacao = anoPublicacao;

  double? get preco => this._preco = _preco;

  void set preco(double? preco) => this._preco = preco;

  Editora? get editora => this._editora;

  void set editora(Editora? editora) => this._editora = editora;

  List<Autor>? get listAutor => this._listAutor;

  void set listAutor(List<Autor>? listAutor) => this._listAutor = listAutor;

  void adicionarAutor(Autor autor) {
    listAutor!.add(autor);
  }

  void removerAutores() {
    for (var autor in listAutor!) {
      autor.excluirContato();
    }
    this.listAutor!.clear();
  }

  void listarAutores() {
    for (var item in listAutor!) {
      print(item.nome);
      item.listarContatos();
    }
  }

  @override
  String toString() => ' Título:$titulo, ano da Publicação:$anoPublicacao, preço:$preco ';
}
