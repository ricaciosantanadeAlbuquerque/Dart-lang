import 'dart:io';

/**
 * 2. Usando on para tratar exceção específica
Crie uma função que converta uma String para int usando int.parse().
Use on FormatException para capturar o erro quando a conversão falhar.
Exemplo de entrada que deve causar erro: "abc"
 */

void main() {
  converte('dd');
}

void converte(String entrada) {
  try {
    int result = int.parse(entrada);
    print('Converção bem sucedida: $result');
  } on FormatException {
    print('ERRO!  de conversão, $entrada não é um número');
  } catch (e) {
    print(e);
  }
}
