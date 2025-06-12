import 'dart:async';

void main() {
  conceitoBasico();
}

void conceitoBasico() {
  // 1) definir o controle
  /**
   * O controle(SgtreamController) é a interface que controla o fluxo (stream) 
   * mas também pode adicionar valores na stream, assim como  marcar inscritos com
   * método listen() ou await async.
   * há dois tipos de Stream, a Stream de inscrição única. 
   * e as stream de distribuição.(StreamSubinscription() ee StreamBroadcast())
   */

  List<dynamic> listaDados = [];

  StreamController streamController = new StreamController();

  // capturando stream
  final Stream stream = streamController.stream.asBroadcastStream();

  // adicionando inscritos

  final StreamSubscription inscrito01 = stream.listen(
    (onData) {
      print('inscrito01:$onData');
      listaDados.add(onData);
    },
    onDone: () {
      print('Stream fechada.');
      print(listaDados);
    },
    onError: (error) => print('Error $error'),
    cancelOnError: true,
  );

  // ignore: unused_local_variable
  final StreamSubscription inscrito02 = stream.listen(
    (onData) {
      print('inscrito02:$onData');
    },
    onError: (error) {
      print('Error:$error');
    },
    onDone: () => print('Stream fechada'),
    cancelOnError: true,
  );
  // adicionando valores a stream

  streamController.sink.add('Ricacio Santana');
  streamController.sink.add(32);
  streamController.sink.add(1.72);
  streamController.sink.add(68);
  streamController.sink.add('Salário:2100');
  streamController.sink.close();

  for (var i = 0; i < 5; i++) {
    if (i == 1) {
      inscrito01.pause();
    }
  }
}
