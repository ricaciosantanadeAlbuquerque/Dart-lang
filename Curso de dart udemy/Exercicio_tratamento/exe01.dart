/**
 * 1. Usando try-catch para tratar erro de divisão
Crie uma função chamada dividir que recebe dois números e retorna a divisão entre eles.
Use try e catch para capturar o erro quando o divisor for zero.
Imprima uma mensagem como:

"Erro: não é possível dividir por zero."
 */

void main() {
  var result = dividir(valor1: 5, valor2: 1);

  print(result);
}

int dividir({required int valor1, required int valor2}) {
  late int divisao;

  try {
    divisao = valor1 ~/ valor2;
  } catch (e) {
    print('Erro: não é possível dividir por zero.');
  }

  return divisao;
}
