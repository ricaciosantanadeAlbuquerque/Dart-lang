import '../projetoLivraria/autor.dart';
import '../projetoLivraria/editora.dart';

abstract class Livro {
  String? _titulo;
  DateTime? _anoPublicacao;
  double? _preco;
  int? _nota;
  int? _quantidade;
  Editora? _editora;

  Livro({required String titulo, required DateTime date, required double preco, required int nota, required int quantidade, required Editora editora}) {
    this.titulo = titulo;
    this.anoPublicacao = anoPublicacao;
    this.preco = preco;
    this.nota = nota;
    this.quantidade = quantidade;
    this.editora = editora;
  }

  String? get titulo => this._titulo;

  void set titulo(String? titulo) {
    this._titulo = titulo;
  }

  DateTime? get anoPublicacao => this._anoPublicacao;

  void set anoPublicacao(DateTime? ano) {
    this._anoPublicacao = ano;
  }

  double? get preco => this._preco;

  void set preco(double? preco) {
    this._preco = preco;
  }

  int? get nota => this._nota;

  void set nota(int? nota) {
    this._nota = nota;
  }

  int? get quantidade => this._quantidade;

  void set quantidade(int? quantidade) {
    this._quantidade = quantidade;
  }

  Editora? get editora => this._editora;

  void set editora(Editora? editora) {
    this._editora = editora;
  }

  void disponivel() {}

  void atualizar() {}

  void adicionarAutor(Autor autor) {}

  void removerAutor(Autor autor) {}
}
