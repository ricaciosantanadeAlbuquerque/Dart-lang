import 'dart:math';

void main() {
  streamTemperatura().listen((temp) {
    print('🌡️ Temperatura: ${temp.toStringAsFixed(1)}°C');
  },
  onDone: () => print('\nLeitura Finalizada.'),
  onError:(onError) => print('Erro na leitura $onError')
  );
}

/**
 * Stream de sensores (temperatura)
Simule uma Stream de temperatura ambiente com valores aleatórios entre 20°C e 30°C emitidos a cada 1 segundo, por 10 segundos.
 */

Stream<double> streamTemperatura({int valueDefault = 10}) async* {
  Random random = Random();
  for (int i = 0; i < valueDefault; i++) {
    await Future.delayed(Duration(seconds: 1));
    double temperatura = 20 + (random.nextDouble() * 10);
    yield temperatura;
  }
}
