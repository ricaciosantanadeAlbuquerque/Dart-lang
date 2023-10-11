import 'autor.dart';
import 'editora.dart';
import 'livro.dart';

class Ebook extends Livro {
  String? _formato;
  String? _arquivo;
  // super  evoca o construtor da classe mãe
  Ebook({required String formato, required String arquivo, required String titulo, required int anoPublicacao, required double preco, required int nota, required int quantidade, required Editora editora, required Autor autor}) : super(titulo:titulo,anoPublicacao:anoPublicacao,preco:preco,nota:nota,quantidade:quantidade, editora:editora,autor:autor){
    this._formato = formato;
    this._arquivo = arquivo;
  }

  String? get formato => this._formato;

  void set formato(String? formato) {
    this._formato = formato;
  }

  String? get arquivo => this._arquivo;

  void set arquivo(String? arquivo) {
    this._arquivo = arquivo;
  }

  void ler() {
    // super evoca o método da classe mãe
    print(super.titulo);
  }
}
