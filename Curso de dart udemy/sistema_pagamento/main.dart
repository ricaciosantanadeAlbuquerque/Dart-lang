import 'boleto_bancario.dart';
import 'cartao_credito.dart';
import 'pix.dart';

/**
 * Crie uma classe Pagamento e subclasses:

CartaoCredito

BoletoBancario

Pix

Cada classe deve sobrescrever o método processarPagamento(), exibindo uma mensagem diferente.
 */
void main() {
  BoletoBancario boleto = BoletoBancario();
  CartaoCredito cartao = CartaoCredito();
  Pix pix = Pix();

  boleto.processarPagamento();
  cartao.processarPagamento();
  pix.processarPagamento();
}
