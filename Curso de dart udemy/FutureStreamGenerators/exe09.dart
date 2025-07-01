void main() {
  final stream = Stream.value("Conexão bem-sucedida");

  stream.listen((mensagem) {
    print(mensagem);
  });
}

/**
 * Emissão única com Stream.value
Retorne "Conexão bem-sucedida" via stream.
 */
