import '../funcaoGenerator_Stream/main.dart';

Future<void> main(List<String> args) async {
  print(funcaoAssincronaGenerator(maxValue: 25));
  final Stream<int> stream = funcaoAssincronaGenerator(maxValue: 100);
  stream.listen((onData) {
    print('Valor: $onData');
  });

  print('-------------Recursividade--------------');

  Stream<int> result = funcaoRecursivaAssincrona(20);
  result.forEach(print);

  print('--------------------- tratamento Generators Stream -------------');

  Stream<int> stream2 = contagemStream(20, 7);
  final int soma = await somar(stream2);
  print('Soma:$soma'); // erro proposital
}

/// Funcao Geradora async* retorna Stream<>
Stream<int> funcaoAssincronaGenerator({int maxValue = 0}) async* {
  int i = 0;
  while (i < maxValue) {
    yield ++i;
  }
}

/// Funcao Recursiva yield*
Stream<int> funcaoAssincronaRecursiva(int maxValue) async* {
  for (int i = 1; i <= maxValue; i++) {
    yield i;
    yield* funcaoAssincronaRecursiva(i - maxValue);
  }
}

Future<int> somar(Stream<int> stream) async {
  int soma = 0;
  try {
    await for (int i in stream) {
      soma += i;
    }
  } catch (e) {
    print('Exception:$e');
    return -1;
  }
  return soma;
}

Stream<int> contagemStream([int maxValue = 10, int erro = 0]) async* {
  for (int i = 1; i <= maxValue; i++) {
    if (i == erro) {
      throw Exception('ERRO proposital');
    } else {
      yield i;
    }
  }
}
