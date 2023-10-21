class Contato {
  String? _tipo;
  String? _contato;

  Contato(this._contato, this._tipo);

  String? get tipo => this._tipo;

  void set tipo(String? tipo) {
    this._tipo = tipo;
  }

  String? get contato => this._contato;

  void set contato(String? contato) {
    this._contato = contato;
  }

  String listar() {
    return this.toString();
  }

  @override
  String toString() => 'Tipo: $_tipo, Contato: $_contato';
}
