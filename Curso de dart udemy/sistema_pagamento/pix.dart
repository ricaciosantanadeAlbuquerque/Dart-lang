import 'pagamento.dart';

class Pix extends Pagamento {
  @override
  void processarPagamento() {
    print('Valor pago no pix');
  }
}
