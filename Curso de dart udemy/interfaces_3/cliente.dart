import 'interface.dart';

class Cliente implements Dao {
  int? _codigo;
  String? _nome;

  Cliente(this._codigo, this._nome);

  //get and set

  int? get codigo => this._codigo;

  void set codigo(int? codigo) {
    this._codigo = codigo;
  }

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  // interface
  @override
  void inserir() {
    print("Inserir produto no carrinho !!");
  }

  @override
  void excluir() {
    print("Excluir produto do carrinho !");
    this.nome = null;
    this.codigo = null;
  }

  @override
  void localizar() {
    toString();
  }

  @override
  String toString() => 'Nome:$nome, Código:$codigo';
}
