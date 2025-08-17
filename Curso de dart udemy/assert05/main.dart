/**
 * 5️⃣ Parâmetro obrigatório preenchido
Crie a função calcularDesconto(double preco, double desconto) e 
use assert() para garantir que desconto esteja entre 0 e 1 (0% a 100%).
 */
import 'dart:developer';

void main() {
  double result = calcularDesconto(1500, 0.05);
  print('O resulta com desconto; $result');
}

double calcularDesconto(double preco, double desconto) {
  log('Preço: $preco valor  do desconto ${desconto}');
  assert(desconto >= 0 && desconto <= 1, 'Desconto não está entre 0 e 1');

  return preco * desconto;
}
