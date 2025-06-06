import 'dart:async';

void main(List<String> rags) async {
  /// linhas de instanciamento
  final StreamController<int> streamController = new StreamController<int>();

  /// pegando Stream
  final Stream<int> stream = streamController.stream.asBroadcastStream();

  // escutando  stream

  stream.listen(
    (value) {
      print('Carrinho: $value');
    },
    onDone: () => print('Finalize suas compras!'),
    onError: (error) => print('ERRO!! $error'),
  );

  stream.listen(
    (value) {
      print('Mensagem: $value');
    },
    onDone: () => print('Fim mensagem'),
    onError: (error) => print('ERRO!! $error'),
  );
  streamController.sink.add(120);
  streamController.sink.add(2800);
  
  await streamController.sink.addStream(
    Stream.fromIterable([1500, 3000, 15000]),
  );
  await streamController.sink.close();
}
