import 'autor.dart';
import 'editora.dart';

abstract class Livro {
  String? _titulo;
  int? _anoPublicacao;
  Editora? _editora;
  List<Autor> _listAutor = [];

  Livro({required String titulo, required int anoPublicacao, required Editora editora}) {
    this.titulo = titulo;
    this.anoPublicacao = anoPublicacao;
    this.editora = editora;
  }

  List<Autor> get listAutor => this._listAutor;

  void set listAutor(List<Autor> listAutor) {
    this._listAutor = listAutor;
  }

  Editora? get editora => this._editora;

  void set editora(Editora? editora) {
    this._editora = editora;
  }

  String? get titulo => this._titulo;

  void set titulo(String? titulo) {
    this._titulo = titulo;
  }

  int? get anoPublicacao => this._anoPublicacao;

  void set anoPublicacao(int? anoPublicacao) {
    this._anoPublicacao = anoPublicacao;
  }

  void adicionarAutor(Autor autor) {
    this._listAutor.add(autor);
  }

  void removerAutor() {
    for (var item in listAutor) {
      item.excluirContato();
    }
    print(this.listAutor[0].listContato.isEmpty);
    this.listAutor.clear();
  }

  @override
  String toString() {
    return 'Título:$_titulo, Ano da publicação:$_anoPublicacao,';
  }
}
