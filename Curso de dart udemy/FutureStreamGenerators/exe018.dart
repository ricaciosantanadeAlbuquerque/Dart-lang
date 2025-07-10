/**
 * ✅ Composição com yield*
Una duas streams com yield*
 */

void main() {
  combinandoStreams().listen((event) => print(event));
}

Stream<int> numeros() async* {
  yield 1;
  yield 2;
  await Future.delayed(Duration(seconds: 1));
  yield 3;
}

Stream<String> letras() async* {
  yield 'A';
  yield 'B';
  await Future.delayed(Duration(seconds: 1));
  yield 'C';
}

Stream<dynamic> combinandoStreams() async* {
  yield* numeros();
  yield* letras();
}


// Para adicionar valores de outras funçoes a Stream use yield*