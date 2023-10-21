import 'contato.dart';

class Autor {
  String? _nome;
  String? _abreviaturas;
  List<Contato> _listaContatos = [];

  Autor({required String? nome, required String? abreviatura, required String? tipo, required String? contato}) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.abreviaturas = (abreviatura != null) ? abreviatura : 'indefinido';
    this.adicionar(tipo, contato);
  }
  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  String? get abreviaturas => this._abreviaturas;

  void set abreviaturas(String? abreviaturas) {
    this._abreviaturas = abreviaturas;
  }

  List<Contato> get listaContatos => this._listaContatos;

  List<Contato> consultar() {
    return this.listaContatos;
  }

  void adicionar(String? tipo, String? contato) {
    if (tipo != null && contato != null && tipo.isNotEmpty && contato.isNotEmpty) {
      this.listaContatos.add(Contato(contato, tipo)); // linhas de instânciamento por composição
    }
  }

  void remover(String tipo, String contato) {
    this.listaContatos.removeWhere((cont) {
      return contato == cont.contato && tipo == cont.tipo;
    });
  }

 @override
  String toString() {
    return 'Nome:$_nome, Abreviatura:$_abreviaturas,';
  }
}
