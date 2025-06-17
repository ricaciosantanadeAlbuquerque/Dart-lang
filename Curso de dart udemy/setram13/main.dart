import 'dart:async';

void main() async {
  final StreamController streamController = new StreamController.broadcast();

  /// inscrito 01

  final StreamSubscription<dynamic> inscrito01 = streamController.stream.listen(
    (onData) {
      print('inscrito01:$onData');
    },
    onError: (onError) => print('Error:$onError'),
    onDone: () => print('Stream Finalizada!!'),
  );

  final StreamSubscription<dynamic> inscrito02 = streamController.stream.listen(
    (onData) {
      print('Inscrito02:$onData');
    },
    onError: (error) => print('ERRO !!! $error'),
    onDone: () => print('Fim da Stream'),
  );

  streamController.sink.add(20);
  await streamController.sink.addStream(
    Stream.fromIterable([45, 72, 120, 250]),
  );
  streamController.sink.close();

  // testStreamPeriodic();
  // streamFormadireta();
  relogio();
}

void testStreamPeriodic() {
  final stream = Stream.periodic(
    Duration(seconds: 2),
    (intValor) => 'Evento número: $intValor',
  );

  var inscrito = stream.listen((onData) {
    print('inscrito: $onData');
  });

  Future.delayed(Duration(seconds: 5), () => inscrito.cancel());
}

void streamFormadireta() {
  print('Carregando...');
  final stream = Stream.periodic(Duration(seconds: 1), (e) => e + 1).take(5);
  stream.listen((onData) {
    print('$onData');
  });
}

void relogio() async {
  final stream = Stream.periodic(Duration(seconds: 1), (_) => DateTime.now());

  final StreamSubscription inscrito = stream.listen((onData) {
    print('AGora: ${onData.hour}:${onData.minute}:${onData.second}');
  });

  await Future.delayed(Duration(minutes: 5), () => inscrito.cancel());
}
