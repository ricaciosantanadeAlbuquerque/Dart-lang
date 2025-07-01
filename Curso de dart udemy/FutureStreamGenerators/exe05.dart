/**
 *  Soma com async/await
Some dois valores com atraso de 2 segundos.
 */

Future<void> main() async {
  try {
    final result = await soma(valor1: -20, valor2: 25);
    print('Resultado: $result');
  } catch (e, s) {
    print('Exception: $e');
    print('Stack Trace: $s');
  }
}

Future<int> soma({int valor1 = 5, int valor2 = 15}) {
  return Future.delayed(Duration(seconds: 2), () {
    if (valor1 < 0 || valor2 < 0) {
      throw ArgumentError('Os valores não podem ser negativos');
    }
    return valor1 + valor2;
  });
}
