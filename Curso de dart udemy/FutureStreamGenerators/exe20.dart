import 'dart:math';

/**
 * Crie uma Stream com Stream.periodic()
 *  que emita um número aleatório entre 0 e 100. 
 * A cada valor emitido,
 *  use um Future para verificar se o valor é maior que 90. Se for, 
 * imprima "Alerta: valor alto".
 */

void main() {
  numerosPeriodicos().listen((event)async{
    print('Event:$event');
    await testValor(valor: event);
  },
  onDone: () => print('Fim do fluxo'));
}

Stream<int> numerosPeriodicos() {
  Random random = Random();
  return Stream.periodic(Duration(seconds: 2), (int cont) {
    return random.nextInt(101);
  }).take(20);
}

Future<void> testValor({required int valor}) async {
  await Future.delayed(Duration(seconds: 2));
  if (valor > 90) {
    print('Alerta: valor alto');
  }
}
