/**
 * ✅ Carregamento com Future.delayed
Simule o carregamento de um app com atraso de 3 segundos.
 */
Future<void> main() async {
  try {
    final resultado = await carregamento();
    print(resultado);
  } catch (e, s) {
    print('Excecao: $e');
    print('StackTrace:$s');
  }
}

Future<String> carregamento() {
  print('Carregando...');
  return Future.delayed(
    Duration(seconds: 3),
    () => 'App Carregando com Sucesso',
  );
}
