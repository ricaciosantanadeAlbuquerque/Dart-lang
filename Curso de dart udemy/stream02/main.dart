import 'dart:async';

void main() async {
  final stream = Stream.value('Ricacio'); // linha de instânciamento.
  final sub = stream.listen((value) {
    print(value);
  });

  sub.onDone(() => print('Finalizado'));
  sub.onError((error) => print('ERRO $error'));

  await sub.asFuture();
  await sub.cancel();

  broadCast();
}
/// Multiplas assinaturas asBroadcastStream
Future<void> broadCast() async {
  final stream = Stream.value(20).asBroadcastStream();

  final StreamSubscription<int> carrinho = stream.listen(
    (value) {
      print('Carrinho: $value');
    },
  );

   carrinho.onDone(() => print('Finalizado'));
  carrinho.onError((onError) => print('Error $onError'));

  final StreamSubscription<int> mensagem = stream.listen((value) {
    print('Mensagem: $value');
  });

  mensagem.onDone(() => print('Fim Mensagem'));
  mensagem.onError((onError) => print('ERRO! $onError'));

 

}

