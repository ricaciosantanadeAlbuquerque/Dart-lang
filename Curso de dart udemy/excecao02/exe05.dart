void main() {
  calcularDesconto(1500, 12000);
}

void calcularDesconto(double preco, double desconto) {
  try {
    if (desconto > preco) throw ErroDeNegocio();
    print('Desconto de $desconto aplicado sobre valor do produto $preco');
    print('Total a pagar ${preco - desconto}');
  } on ErroDeNegocio catch (e) {
    print(e);
  } catch (e) {
    print('Excecao: $e');
  }
}

class ErroDeNegocio implements Exception {
  final String mensagem =
      'Não é possível realizar este negocio,'
      ' Pois o preço do produto é menor que o desconto dado.';

  @override
  String toString() => '$mensagem';
}
