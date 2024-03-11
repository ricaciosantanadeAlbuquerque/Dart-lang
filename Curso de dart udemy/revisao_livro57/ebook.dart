import 'editora.dart';
import 'livro.dart';

class Ebook extends Livro {
  String? _formato;
  String? _arquivo;

  Ebook({required String arquivo, required String formato,required String titulo,required int anoPublicacao,required double preco,required Editora editora}) : super(titulo: titulo,anoPublicacao: anoPublicacao,preco: preco,editora: editora){
    this.arquivo = arquivo;
    this.formato = formato;
  }

  String? get formato => this._formato;

  void set formato(String? formato) => this._formato = formato;

  String? get arquivo => this._arquivo = arquivo;

  void set arquivo(String? arquivo) => this._arquivo = arquivo;

  @override
  String toString() {
    return 'Formato:$_formato, Arquivo:$_arquivo ' + super.toString();
  }
}
