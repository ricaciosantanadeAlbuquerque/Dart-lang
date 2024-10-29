void main() {
  //contagem(tempo: 3);

  tarefas(tempo: 10).then((onValue) => print('${onValue ?? 'Nenhuma tarefa'}'));
}

/// Função Sincrona
void contagem({int tempo = 3}){
  print('Carregando...');
  for (var i = 1; i <= tempo; i++) {
     Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == tempo) print('Concluido');
    });
  }
}

/// Função Assincrona

Future<String?> tarefas({int tempo = 1}) {
  return status().then((value) {
    return 'Status: $value';
  }).catchError(
    (onError) {
      print('ERRO! $onError');
      return null;
    },
    test: (error) => error is Future && error.runtimeType == Future,
  ).whenComplete(() {
    print('whenComplete será executado independentemente de haver erro ou não');
  });
}

Future<String> status([int tempo = 1]) {
  return Future.delayed(Duration(seconds: tempo), () {
    return  Future.error('ERRO! intencional!');
  });
}
