import 'movimento.dart';

class ContaComum {
  int? _numeroConta;
  DateTime? _aberturaConta;
  DateTime? _fechamentoConta;
  int? _situacaoConta;
  int? _senhaConta;
  double? _saldoConta;
  Movimento? _movimento;

  ContaComum({required Movimento? movimento}) {
    this._movimento = movimento;
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

  Movimento? get movimento => this._movimento;

  void set movimento(Movimento? movimento) {
    this._movimento = movimento;
  }
  // =============================================

  void abrirConta({required int numeroConta, required DateTime aberturaConta, required int senhaConta, required double saldoConta}) {
    this.numeroConta = numeroConta;
    this.aberturaConta = aberturaConta;
    this.senhaConta = senhaConta;
    this.saldoConta = saldoConta;
    this.situacaoConta = 1;
  }

  void consultarConta(int numeroConta) {
    if (numeroConta == this.numeroConta) {
      print('Numero da conta: ${numeroConta}\n');
      print('Saldo: $_saldoConta \n');

      if (this.situacaoConta == 1) {
        print(" conta  está aberta \n");
      } else {
        print("Conta está fechada \n");
      }
    } else {
      print(" A conta  de número $_numeroConta não existe ! \n");
    }
  }

  bool? validarSenha(int numeroSenha) {
    return numeroSenha == this.senhaConta;
  }

  double? emitirSaldo() {
    return this.saldoConta;
  }

  void emitirExtrato() {
    print("Numero da conta ${_numeroConta}\n");
    print("Saldo ${this.saldoConta}");
  }

  void sacarValor(double valor) {
    print("O saldo atual é de ${saldoConta}\n");

    if (valor < this.saldoConta!) {
      this.saldoConta = this.saldoConta! - valor;
    }
    print('O valor do saque $valor, saldo atual $saldoConta');
  }

  void depositarValor(double valor) {
    this.saldoConta = this.saldoConta! + valor;
  }

  int encerrarConta() {
    int valor = 0;

    if (this.saldoConta == 0) {
      valor = 1;
    }

    return valor;
  }

  @override
  String toString() {
    return 'Numero da Conta: $_numeroConta, Data de abertura da conta: $_aberturaConta, Data de fechamento da Conta $_fechamentoConta, Situação da Conta $_situacaoConta, Senha da conta $senhaConta, Saldo: $saldoConta, ';
  }
}
