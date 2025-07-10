/**
 * ✅ Sensor com async*
Emita valores aleatórios entre 20°C e 30°C por 10 segundos.
 */
import 'dart:math';

void main() {
  temperatura().forEach((value) {
    print('Temperatura:${value.toStringAsFixed(1)} C°');
  });
}

Stream<double> temperatura() async* {
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield 20 + (random.nextDouble() * 10);
  }
}
