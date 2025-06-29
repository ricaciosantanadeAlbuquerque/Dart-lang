import 'dart:math';

void main() {
  final inicio = DateTime.now();
  temperatura().listen((onData) {
    final agora = DateTime.now();
    final diferenca = agora.difference(inicio).inSeconds;
    print('[$diferenca]🌡️ Temperatura ambiente: ${onData.toStringAsFixed(1)} °C');
  }, onDone: () => print('Leitura finalizada'));
}

/**
 * Stream de sensores (temperatura)
 * Simule uma Stream de temperatura ambiente com valores aleatórios entre 20°C 
 * e 30°C emitidos a cada 1 segundo, por 10 segundos.
 */

Stream<double> temperatura() async* {
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    double temperatura = 20 + (random.nextDouble() * 10);
    yield temperatura;
  }
}
