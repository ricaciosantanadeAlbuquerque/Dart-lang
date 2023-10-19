import 'conta_comum.dart';
import 'movimento.dart';

class ContaEspecial extends ContaComum {
  double? _limiteConta;
  Movimento? _movimento;

  ContaEspecial(
    this._movimento,
  ) : super(movimento: _movimento);

  double? get limiteConta => this._limiteConta;

  void set limiteConta(double? limiteConta) {
    this._limiteConta = limiteConta;
  }

  // ==================================================
  void abrirContaEspecial({required double limiteConta, required int numeroConta, required DateTime aberturaConta, required int senhaConta, required double saldoConta}) {
    this._limiteConta = limiteConta;
    super.abrirConta(numeroConta: numeroConta, aberturaConta: aberturaConta, senhaConta: senhaConta, saldoConta: saldoConta);
    this._movimento!.informaData(DateTime.now());
    this._movimento!.registrarMovimento(3, 1602);
  }

  void sacar(double sacar) {
    super.sacarValor(sacar);
    this._movimento!.informaData(DateTime.now());
    this._movimento!.registrarMovimento(1, 1602);
  }

  @override
  String toString() {
    return 'Limite da conta: $_limiteConta' + super.toString();
  }
}
