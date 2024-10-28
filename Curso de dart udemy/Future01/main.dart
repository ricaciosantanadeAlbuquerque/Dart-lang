// ignore_for_file: body_might_complete_normally_catch_error

void main() async {
  print(await tarefa(tempo: 4)); // await  espera o fim  da future
  contangem();

  response(tempo: 5).then((value) { // then registra o retorno da future
    print(value);
  });
}

// Usando await async
void contangem({int tempo = 3}) {
  for (var i = 1; i <= tempo; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33} %');
      if (i == tempo) print('Concluido.');
    });
  }
}

// tarefa
Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

// Status
Future<String> status([int tempo = 1]) {
  return Future.delayed(Duration(seconds: tempo), () => 'Fim processo');
}

// usano then

Future<String> response({int tempo = 1}) {
  return process(tempo).then((onValue) {
    return onValue;
  }).catchError((onError) {
    print('ERRO!: $onError');
  },
      test: (onError) => onError is! Future && onError.runtimeType != Future
      ).whenComplete(() {
    print('Sempre será executado');
  });
}

Future<String> process([int tempo = 1]) {
  return Future.delayed(Duration(seconds: tempo), () {
    return Future.error('Erro Intencional');
  });
}
