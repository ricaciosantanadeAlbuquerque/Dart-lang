import 'interface_autor.dart';

class Autor implements InterfaceAutor {
  String? _nome;
  String? _abreviatura;

  Autor({required String nome, required String abreviatura}) {
    this.nome = (nome.isNotEmpty) ? nome : 'Valor não informado';
    this.abreviatura = (abreviatura.isNotEmpty) ? abreviatura : 'Valor não informado';
  }

// get and set
  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  String? get abreviatura => this._abreviatura;

  void set abreviatura(String? abreviatura) {
    this._abreviatura = abreviatura;
  }

  @override
  void consultar() {
    print(toString());
  }

  @override
  void adicionarcontato() {}

  @override
  void removerContato() {}

  @override
  String toString() => 'Nome:$_nome, Abreviatura:$_abreviatura';
}
