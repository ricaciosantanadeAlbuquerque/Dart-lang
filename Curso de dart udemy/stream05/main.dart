import 'dart:async';

void main(List<String> rags) async {
  await streamError();
  print('==================== test =================');
  streamBroadCast();
}

/// Stream de inscrição unica
Future<void> streamError() async {
  /// instância da classe Stream via contrutor nomeado.
  final Stream<String> stream = new Stream.error('ERRO !!!');

  /// criando a escuta.

  try {
    final StreamSubscription<String> sub = await stream.listen(
      (value) {
        print('ERRO: $value');
      },
      onDone: () => print('Finalizado'),
      onError: (onError) => print(onError),
    );

    sub.cancel();
  } catch (e, s) {
    print('Excecão:$e');
    print('Stack Trace: $s');
  }

  /**
   * Stream de assinatura única
   */
}

/// Stream de inscrição Broadcast
/// traduzindo, multiplas inscrições.

void streamBroadCast() {
  final Stream<int> stream = new Stream.value(50).asBroadcastStream();

  // criando várias escutas.

  stream.listen(print); // escuta 1
  stream.listen((value) => print('Stream:$value')); // escuta 2

    stream
      .toList()
      .then((value) {
        print('then:$value');
      })
      .catchError((onError) {
        print('Error !! $onError');
      })
      .whenComplete(() {
        print('Sempre será executado.');
      });

      
}
