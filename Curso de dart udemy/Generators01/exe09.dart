import 'dart:math';

void main() {
  geradorNumeros(limite: 20).listen((event) => print(event));
}

/// Crie uma função async* que gere números aleatórios a cada segundo até atingir um valor máximo n.
Stream<int> geradorNumeros({int limite = 10}) async* {
  Random random = Random();
  int valor = 1;
  while (valor != limite) {
    await Future.delayed(Duration(seconds: 1));
    valor = random.nextInt(limite + 1);
    yield valor;
  }
}
