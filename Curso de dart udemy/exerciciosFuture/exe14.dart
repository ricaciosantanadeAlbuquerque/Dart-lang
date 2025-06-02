void main() async {
  
  Future<List<num>> response = Future.wait([
    soma(valor1: 25, valor2: 25),
    subtracao(valor1: 120, valor2: 20),
    multiplicacao(10, 20),
    divisao(50, 2),
  ]);
  // método 1
  final resposta = await response;
  resposta.forEach(print);
  print('------------------------------------------------');
  response
      .then(
        (value) => value.forEach(print),
        onError: (onError) => print(onError),
      )
      .catchError(
        (onError) => print(onError),
        test: (onError) => onError is Future,
      )
      .whenComplete(() {
        print('Sempre é executado');
      });
}

Future<num> soma({num valor1 = 0, num valor2 = 0}) {
  return Future(() {
    return valor1 + valor2;
  });
}

Future<num> subtracao({num valor1 = 0, num valor2 = 0}) {
  return Future(() {
    return valor1 - valor2;
  });
}

Future<num> multiplicacao([int valor1 = 0, int valor2 = 0]) {
  return Future(() {
    return valor1 * valor2;
  });
}

Future<num> divisao([int valor1 = 0, int valor2 = 0]) {
  return Future.microtask(() => valor1 * valor2);
}
