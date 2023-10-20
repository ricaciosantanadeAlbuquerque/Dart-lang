class Autor {
  String? _nome;
  String? _abreviaturas;

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  String? get abreviaturas => this._abreviaturas;

  void set abreviaturas(String? abreviaturas) {
    this._abreviaturas = abreviaturas;
  }

  void consultar(){}

  void adicionar(String tipo,String contato){}

  void remover(String tipo,String contato){}
}
