import 'contato.dart';
// Autor() tem uma relação de composição com Contato(), onde o Todo Autor() cria gerencia e delata a parte contato

class Autor {
  String? _nome;
  List<Contato>? _listContato = [];

  Autor({required String nome, required String tipoContato, required String contato}) {
    this.nome = nome;
    criarContato(tipoContato: tipoContato, contato: contato);
  }

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome;

  List<Contato>? get listContato => this._listContato;

  void set listContato(List<Contato>? listContato) => this._listContato = listContato;

  void criarContato({required String tipoContato, required String contato}) {
    this.listContato!.add(Contato(tipoContato: tipoContato, contato: contato));
  }

  void listarContatos() {
    for (var contato in this.listContato!) {
      contato.mostrarContato();
    }
  }

  void excluirContato() {
    listContato!.clear();
  }

  @override
  String toString() => 'Nome:$nome';
}
