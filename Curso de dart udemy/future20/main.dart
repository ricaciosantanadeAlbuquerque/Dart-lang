/**
 * Trabalhando com then() catchError() whenComplete()
 */
void main() {
  tarefa(tempo: 5).then((value) {
    print('Valor:${value}');
  }).catchError((onError) {
    print(onError);
  }).whenComplete(() {
    print('Fim programa !');
  });
}

Future<String> tarefa({int tempo = 3}) {
  return status(tempo).then((onValue) {
    return 'Status:${onValue}';
  }).catchError(
    (onError) {
    
      return 'ERRO! ${onError}';

    },
    test: (onError) => onError is Future && onError.runtimeType == Future,
  ).whenComplete(() {
    print('Sempre será executando');
  });
}

Future<String> status([int tempo = 1]) => Future.error('Valor não esperado !!');
