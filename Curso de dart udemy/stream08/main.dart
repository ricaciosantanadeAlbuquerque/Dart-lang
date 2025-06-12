import 'dart:async';

void main() async {
  model();
}

void model() {
  List<dynamic> lista = [];

  final contador = Contador(termino: 10, erro: 7);
  final stream = contador.stream.asBroadcastStream();

  // inscrito 01
  final inscrito01 = stream.listen(
    (onData) {
      print('inscrito1: $onData');
      lista.add(onData);
    },
    onDone: () {
      print('Stream Finalizado');
      print(lista);
    },
    onError: (onError) {
      print(onError);
    },
    cancelOnError: true,
  );

  // segunda escuta ==========================================================
  var par = (e) => e % 2 == 0;
  var texto = (e) => e.toString().padLeft(2, '0');

  // ignore: unused_local_variable
  var inscrito02 = stream.where(par)
    .map(texto).listen(
      (onData) {
        print('Inscrito2: $onData');
      },
      onError: (error) => print('$error'),
      onDone: () => print('Finalizado'),
      cancelOnError: false,
    );

  for (int i = 1; i < 10; i++) {
    if (i == 1) inscrito01.pause();
  }
}

class Contador {
  var _contagem = 1, erro, termino;
  final _controle = new StreamController<int>();

  Contador({this.termino = 5, this.erro = 1}) {
    Timer.periodic(Duration(seconds: 1), (Timer time) {
      (_contagem < termino) ? sink.add(_contagem) : sink.close();
      _contagem++;
      if (_contagem == erro) _controle.addError('Erro intencional');
      if (_contagem > termino) time.cancel();
    });
  }

  Sink<int> get sink => this._controle.sink;
  Stream<int> get stream => this._controle.stream;
}
