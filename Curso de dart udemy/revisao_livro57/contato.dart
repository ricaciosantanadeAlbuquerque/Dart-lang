class Contato {
  String? _tipoContato;
  String? _contato;

  Contato({required String tipoContato, required String contato}) {
    this.tipoContato = tipoContato;
    this.contato = contato;
  }

  String? get tipoContato => this._tipoContato;

  void set tipoContato(String? tipoContato) => this._tipoContato = tipoContato;

  String? get contato => this._contato;

  void set contato(String? contato) => this._contato = contato;

  void mostrarContato() {
      print(toString());
  }

  @override
  String toString() => 'Tipo de contato: $_tipoContato, Contato:$_contato ';
}
