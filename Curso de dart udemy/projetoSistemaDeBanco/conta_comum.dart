class ContaComum {

  int? _numeroConta;
  DateTime? _aberturaConta;
  DateTime? _fechamentoConta;
  int? _situacaoConta;
  int? _senhaConta;
  double? _saldoConta;

  ContaComum({required int numeroConta, required DateTime aberturaConta, required DateTime fechamentoConta, required int situacaoConta, required int senhaConta, required double saldoConta}) {
    this.numeroConta = numeroConta;
    this.aberturaConta = aberturaConta;
    this.fechamentoConta = fechamentoConta;
    this.situacaoConta = situacaoConta;
    this.senhaConta = senhaConta;
    this.saldoConta = saldoConta;
  }

  int? get numeroConta => this._numeroConta;

  void set numeroConta(int? numeroConta) {
    this._numeroConta = numeroConta;
  }

  DateTime? get aberturaConta => this._aberturaConta;

  void set aberturaConta(DateTime? aberturaConta) {
    this._aberturaConta = aberturaConta;
  }

  DateTime? get fechamentoConta => this._fechamentoConta;

  void set fechamentoConta(DateTime? fechamentoConta) {
    this._fechamentoConta = fechamentoConta;
  }

  int? get situacaoConta => this._situacaoConta;

  void set situacaoConta(int? situacaoConta) {
    this._situacaoConta = situacaoConta;
  }

  int? get senhaConta => this._senhaConta;

  void set senhaConta(int? senhaConta) {
    this._senhaConta = senhaConta;
  }

  double? get saldoConta => this._saldoConta;

  void set saldoConta(double? saldoConta) {
    this._saldoConta = saldoConta;
  }

  // =============================================

  void abrirConta() {}

  void consultarConta(int numeroConta) {}

  void validarSenha(int numeroSenha) {}

  void emitirSaldo() {}

  void emitirExtrato() {}

  void sacarValor(double valor) {}

  void depositarValor(double valor) {}

  void encerrarConta() {}
}
