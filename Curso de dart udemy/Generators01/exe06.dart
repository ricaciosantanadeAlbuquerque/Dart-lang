void main() {
  relogio().listen((event) {
    
    final horas = event.hour.toString().padLeft(2, '0');
    final minuto = event.minute.toString().padLeft(2, '0');
    final segundo = event.second.toString().padLeft(2, '0');
    print('Agora: $horas:$minuto:$segundo');

  });
}

/**
 * Relógio digital (hora a hora)
Crie uma função async* que emita a hora atual a cada segundo por 5 segundos.
 */

Stream<DateTime> relogio({int tempo = 5}) async* {
  for (int i = 0; i < tempo; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield DateTime.now();
  }
}
