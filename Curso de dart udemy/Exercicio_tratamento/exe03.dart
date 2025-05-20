/**
 * 3. Captura de stack trace
Altere a função do exercício 2 para também imprimir o stack trace quando a exceção ocorrer.
Use catch (e, s) para capturar o erro e o stack trace.
 */

void main() {
  conversao('pp');
}

void conversao([String entrada = 'indefinido']) {
  try {
    int result = int.parse(entrada);
    print('Valor convertido: $result');
  } catch (e, s) {
    print('EXCEÇÃO: $e');
    print('Stack trace:$s');
  }
}
