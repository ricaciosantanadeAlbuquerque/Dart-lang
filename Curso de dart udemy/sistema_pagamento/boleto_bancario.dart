import 'pagamento.dart';

class BoletoBancario extends Pagamento {
  @override
  void processarPagamento() {
    print('Valor pago no boleto.');
  }
}
