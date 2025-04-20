import 'pagamento.dart';

class CartaoCredito extends Pagamento {
  @override
  void processarPagamento() {
    print('Valor pago no cartão de credito');
  }
}
