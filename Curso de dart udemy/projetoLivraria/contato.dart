class Contato {
  String? _tipo;
  String? _contato;

  Contato({required String tipo, required String contato}) {
    this.contato = (contato.isNotEmpty) ? contato : 'Valor não informado';
    this.tipo = (tipo.isNotEmpty) ? tipo : 'Valor não informado';
  }

// get and set

  String? get tipo => this._tipo;

  void set tipo(String? tipo) {
    this._tipo = tipo;
  }

  String? get contato => this._contato;

  void set contato(String? contato) {
    this._contato = contato;
  }

  String listarContatos() {
    return toString();
  }

  @override
  String toString() => 'Tipo: $_tipo Contato: $contato';
}
