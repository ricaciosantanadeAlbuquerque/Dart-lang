import 'dart:async';

Future<void> main() async {
  final StreamController<int> streamController = StreamController<int>();
  final Stream<int> stream = streamController.stream;
  stream.listen((value) {
    print('Resultado: $value');
  }, onDone: () => print('Stream finalizada'));

  try {
    // Aguarda ou espera await o termino da adição da outra stream
    await streamController.sink.addStream(Stream.fromIterable([1, 2, 3]));
  } catch (e, s) {
    print(e);
    print(s);
  }
  // espera para fechar streamController de forma correta
  await streamController.close();
}

/**
 * 🔁 Combinar Stream com addStream()
Crie um StreamController que adiciona outra stream ([1, 2, 3]) dinamicamente.
 */
