void main() async {
  print('oi');

  final stream = new Stream.value('Esforço');

  final subcription = stream.listen((event) {
    print(event);
  });

  subcription.onDone(() {
    print('Finalizado');
  });

  subcription.onError((onError) {
    print('ERRO!: $onError');
  });
  // Aguarda o stream concluir antes de cancelar (opcional nesse caso)
  await subcription.asFuture();
  await subcription.cancel();

  Stream stream2 = Stream.error('ERRO! Geral');

  var response = stream2.listen(
    (value) {
      print('Mostrando o  valor $value');
    },
    onDone: () {
      print('Finalizado');
    },
    onError: (onError) {
      print('ERRo! $onError');
    },
  );

  await response.asFuture();
  await response.cancel();
}
