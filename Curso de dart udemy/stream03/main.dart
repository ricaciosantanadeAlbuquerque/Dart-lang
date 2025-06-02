import 'dart:async';

void main() {
  final StreamController streamController =
      StreamController(); // objeto StreamController
  final Stream<dynamic> stream = streamController.stream.asBroadcastStream();

  /// escutando por meio do listen()
  stream.listen(
    (value) {
      print('Carrinho:$value');
    },
    onDone: () => print('Finalize suas Compras'),
    onError: (e) => print('ERRO !'),
  );

  /// adicionando valores na stream

  streamController.sink
    ..add('Produto 1')
    ..add('Produto 2')
    ..add('Produto 3');
  streamController.sink.addStream(Stream.fromIterable([20, 25, 75]));
  streamController.sink.close();

}
