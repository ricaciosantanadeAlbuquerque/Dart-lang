import 'contato.dart';

class Autor {
  String? _nome;
  List<Contato> _listContato = [];

  Autor({required String nome, required String tipoContato, required String contato}) {
    this.nome = nome;
    this.criarContato(tipoContato, contato);
  }

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  List<Contato> get listContato => this._listContato;

  void set listContato(List<Contato> listContato) {
    this._listContato = listContato;
  }

  void criarContato(String tipoContato, String contato) {
    this.listContato.add(Contato(tipo: tipoContato, contato: contato));
  }

  void excluirContato() {
    this.listContato.clear();
  }

  void listarContatos() {
    for (var item in listContato) {
      item.mostrarContato();
    }
  }
  @override
  String toString() => 'Nome:$nome';
}
