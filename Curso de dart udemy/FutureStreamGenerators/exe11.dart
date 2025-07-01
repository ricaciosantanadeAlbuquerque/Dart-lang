void main() {
  Stream<String> stream = Stream.error('Falha na conexão');

  stream.listen((event) => print(event));
}

/**
 *  Erro com Stream.error
Lance erro "Falha na conexão".
 */
