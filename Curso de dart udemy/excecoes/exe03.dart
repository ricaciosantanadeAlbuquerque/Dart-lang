/**
 * 3. Captura de stack trace
Altere a função do exercício 2 para também imprimir o stack trace quando a exceção ocorrer.
Use catch (e, s) para capturar o erro e o stack trace.
 */

void main() {
  conversao('dd');
}

void conversao(String entrada) {
  try {
    int numero = int.parse(entrada);
    print('valor convertido:$numero');
  } catch (e, s) {
    print('Exception:$e');
    print('Stack Trace:$s');
  }
}
