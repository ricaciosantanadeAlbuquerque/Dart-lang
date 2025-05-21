/**
 * 1. Usando try-catch para tratar erro de divisão
Crie uma função chamada dividir que recebe dois números e retorna a divisão entre eles.
Use try e catch para capturar o erro quando o divisor for zero.
Imprima uma mensagem como:
 */

void main() {
  int resultado = dividir(20, 0);
  print('O resultado da divisão: $resultado');
}

int dividir(int num1, int num2) {
  late int result;

  try {
    result = num1 ~/ num2;
  } catch (e) {
    print('Erro: não é possível dividir por zero.');
  }

  return result;
}
