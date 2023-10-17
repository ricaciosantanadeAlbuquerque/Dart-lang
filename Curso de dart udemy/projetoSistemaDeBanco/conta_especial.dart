class ContaEspecial {
  double? _limiteConta;

  ContaEspecial({required double limiteConta}) {
    this._limiteConta = limiteConta;
  }

  double? get limiteConta => this._limiteConta;

  void set limiteConta(double? limiteConta) {
    this._limiteConta = limiteConta;
  }

  // ==================================================

  void abrirConta(int,double){}

  void sacar(double){}
}
