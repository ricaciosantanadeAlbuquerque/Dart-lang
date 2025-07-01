import 'dart:async';

Future<void> main() async {
  final StreamController streamController = StreamController();
  final Stream stream = streamController.stream.asBroadcastStream();

  final escuta01 = stream.listen((mensagem) {
    print('Escrito01:$mensagem');
  }, onDone: () => print('Stream Finalizada'));
  final escuta02 = stream.listen((mensagem) {
    print('Escrito02:$mensagem');
  });

  streamController.sink.add('Iniciando');
  streamController.sink.add('Processando');
  streamController.sink.add('Finalizado');
  await streamController.close();
  await escuta01.cancel();
  await escuta02.cancel();
}
/**
 *  Controle com StreamController
Emita "Iniciando", "Processando", "Finalizado" manualmente.
 */