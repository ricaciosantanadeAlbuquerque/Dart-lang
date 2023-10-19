import 'conta_comum.dart';
import 'movimento.dart';

class ContaPoupanca extends ContaComum {
  DateTime? _aniverSarioConta;
  Movimento? _movimento;

  ContaPoupanca({required DateTime? aniverSarioConta, required Movimento? movimento}) : super(movimento: movimento);

  DateTime? get aniversarioConta => this._aniverSarioConta;

  Movimento? get movimento => this._movimento;

  void set movimento(Movimento? movimento) {
    this._movimento = movimento;
  }

  void set aniverSarioConta(DateTime? aniversarioConta) {
    this._aniverSarioConta = aniversarioConta;
  }

  void rendaConta(DateTime data, double valor) {
    print('A renda é de 5% sobre o valor ${(this.saldoConta! * 5) / 100}');
  }
}
