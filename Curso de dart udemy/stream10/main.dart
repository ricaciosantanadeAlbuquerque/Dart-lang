import 'dart:async';

void main() {
  final Contador contador = new Contador(termino: 10, erro: 7);

  final stream = contador.stream.asBroadcastStream();

  final StreamSubscription<int> inscrito01 = stream.listen(
    (onData) {
      print('Inscrito01:$onData');
    },
    onError: (onError) {
      print('Error:$onError');
    },
    cancelOnError: false,
    onDone: () => print('Stream finalizada!!!'),
  );

 

  final StreamSubscription inscrito02 = stream
      .listen(
        (onData) {
          print('inscrito02:$onData');
        },
        onError: (onError) {
          print('ERRO! $onError');
        },
        cancelOnError:false, // true, se true cancela a inscricao caso haja erro,
        onDone: () => print('Stream Finalizada.'),
      );

  /// Gerenciado inscritos

  for (var i = 0; i < 10; i++) {
    Future.delayed(Duration(seconds: i), () {
      if (i == 1) inscrito01.pause();
      if (i == 6) inscrito01.resume(); // inicializar novamente
      if (i == 8) inscrito02.cancel();
    });
  }

  /**
   * Na genrencia de  inscritos no Loop 1, o inscrito01 pausa e o inscrito02
   * segue mostrando os eventos sozinhos até 6 evento. então no sexto evento o 
   * inscrito01 volta e recomeça de onde parou mostrando o evento  2 3 e assim por diante.
   *
   */
}

class Contador {
  var _contagem = 1, termino, erro;
  final _controlador = StreamController<int>();

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _contagem < termino ? sink.add(_contagem) : sink.close();
      _contagem++;
      if (_contagem == 3) _controlador.addError('Error intencional');
      if (_contagem > termino) timer.cancel();
    });
  }

  Sink<int> get sink => this._controlador.sink;
  Stream<int> get stream => this._controlador.stream;
}
