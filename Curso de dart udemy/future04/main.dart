void main() {
  contagem();

  tarefa(tempo: 9).then((onValue) => print('${onValue ?? 'Valor nulo'}'));
}

// Future then() catchError() whenComplete()

/// SINCRONA

void contagem({int tempo = 3}) async {
  print('Carregando...');

  for (int i = 1; i <= tempo; i++) {
    await Future.delayed(Duration(seconds: i), () {
      print('${i * 33} %');
      if (i == tempo) print('Concluido');
    });
  }
}

Future<String> tarefa({int tempo = 1}) async {
  return status(tempo).then((onValue) {
    return 'Status:$onValue';
  }).catchError(
    (onError) {
      print('ERRO! $onError');
      return null;
    },
    test: (onError) =>
        onError is Future &&
        onError.runtimeType == Future, // se true então lança uma exceção
  ).whenComplete(() {
    print('Sempre será executado');
  });
}

/**
 * Assim como o finally que é executado independentemente de ser executa a lógica try/ ou chatch().
 * O whenComplete(), também será executando independentemente de ser executado then() ou ctachError().
 * then() chatchError() whenComplete()
 * 
 */

Future<String> status([int tempo = 1]) async {
  return await Future.delayed(
      Duration(seconds: tempo), () => 'Primeira Tarefa realizada com sucesso');
}
