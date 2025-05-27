void main() {
  contagem(tempo: 4);
  
    tarefa(tempo: 5).then((onValue) {
      print(onValue ?? 'Status: nulo');
    });

}

void contagem({int tempo = 3}) {
  print('Carregando...');

  for (var i = 1; i <= tempo; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33} %');

      if (1 == tempo) print('\nConcluido com Sucesso.');
    });
  }
}

Future<String> tarefa({int tempo = 1}) {
  return status()
      .then((onValue) {
        return 'Status: $onValue';
      })
      .catchError((onError) {

        return 'CatchError:$onError';

      }, test: (onError) => onError is Future)
      .whenComplete(() {
        print('Sempre será executado independete da Future ter value ou error');
      });
}

Future<String> status([int tempo = 1]) => Future.delayed(
  Duration(seconds: tempo),
  () => 'Primeira Tarefa finalizada',
);
