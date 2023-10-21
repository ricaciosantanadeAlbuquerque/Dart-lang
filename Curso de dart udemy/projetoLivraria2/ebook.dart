import 'editora.dart';
import 'livro.dart';

class Ebook extends Livro {
  String? _formato;
  String? _arquivo;

  Ebook({required String? formato, required String? arquivo, required String titulo, required DateTime date, required double preco, required int nota, required int quantidade, required Editora editora})
      : super(titulo: titulo, date: date, preco: preco, nota: nota, quantidade: quantidade, editora: editora) {
    this.formato = (formato != null) ? formato : 'indefinido';
    this.arquivo = (arquivo != null) ? arquivo : 'indefinido';
  }

  String? get formato => this._formato;

  void set formato(String? formato) {
    this._formato = formato;
  }

  String? get arquivo => this._arquivo;

  void set arquivo(String? arquivo) {
    this._arquivo = arquivo;
  }

  String? ler() {
    return super.titulo;
  }

@override
  String toString() {
    return 'Formato: $_formato, Arquivo: $_arquivo '+super.toString();
  }
}
