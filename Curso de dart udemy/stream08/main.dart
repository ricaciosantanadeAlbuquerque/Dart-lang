import 'dart:async';

void main() async {
  model();
}

void model() {
  List<dynamic> lista = [];

  final contador = Contador(termino: 10, erro: 7);
  final stream = contador.stream.asBroadcastStream();
  
// inscrito 01
  stream.listen(
    (onData) {
      print('valor $onData');
      lista.add(onData);
    },
    onDone: () {
      print('Stream Finalizado');
      print(lista);
    },
    onError: (onError) {
      print(onError);
    },
  );

// segunda escuta ==========================================================
  stream
      .toList()
      .then((value) {
        print(value);
      })
      .catchError((onError) {
        print(onError);
      });
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
