/**
 * Relógio digital (hora a hora)
Crie uma função async* que emita a hora atual a cada segundo por 5 segundos.
 */

void main() {
  final Stream<DateTime> dateTime = relogio(5);
  dateTime.listen(
    (onData) {
      print('Agora: ${onData.hour}:${onData.minute}:${onData.second}');
    },
    onError: (onError) {
      print('Erro! $onError');
    },
    onDone: () => print('Stream Finalizada'),
    cancelOnError: true, // lança uma exceção caso haja erro
  );
}

Stream<DateTime> relogio(int limite) async* {
  for (int i = 0; i < limite; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield DateTime.now();
  }
}
