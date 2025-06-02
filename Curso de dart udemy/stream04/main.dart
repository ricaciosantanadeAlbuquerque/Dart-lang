import 'dart:async';
import 'dart:math';

void main() {
  final StreamController<int> streamController = StreamController<int>();
  preenchendoStream(streamController);
}

/// ================================ Dados =====================================

void preenchendoStream(StreamController<int> streamController) {
  final Stream<int> stream = streamController.stream.asBroadcastStream();
  Random random = Random();

  // Inscrevendo ouvintes antes de emitir dados

   stream.listen(
    (value) {
      print('Entrada: $value');
    },
    onDone: () => print('Finalizado'),
    onError: (onError) => print('Erro!!!'),
  );

   stream.listen(
    (value) {
      print('Mensagem: $value');
    },
    onDone: () => print('Fim Mensagem'),
    onError: (error) {
      print('ERRO! mensagem erro.');
    },
  );

  stream.toList().then((value) {
    print('Lista: $value');
  });

  // Emitindo os dados após as inscrições

  for (var i = 0; i < 10; i++) {
    streamController.sink.add(random.nextInt(10) + 1);
  }

  streamController.sink.close();
}
