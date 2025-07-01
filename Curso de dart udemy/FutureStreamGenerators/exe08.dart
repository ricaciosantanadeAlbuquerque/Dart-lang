/**
 *  Contador com Stream.periodic
Emita números de 0 a 4 a cada segundo.
 */

void main() {
  final Stream<int> stream = new Stream.periodic(Duration(seconds: 1), (
    int cont,
  ) {
    return cont;
  }).take(5);

  stream.listen(
    (onData) {
      print(onData);
    },
    onDone: () => print('Fim da Stream !'),
    onError: (onError) {
      print('Erro na stream: ${onError}');
    },
    cancelOnError:true,
  );
}
