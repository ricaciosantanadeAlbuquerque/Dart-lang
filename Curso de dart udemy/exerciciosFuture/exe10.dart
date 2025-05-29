void main() async {
  final Future<int> future = new Future.value(5); // linha de instânciameto.

  future
      .then((value) => value + value)
      .then((onValue) async {
        final result = await Future.value(2);
        return onValue * result;
      })
      .then((value) => print(value));

  try {
    final future02 = new Future.value(10);

    final result1 = await future02;

    final future03 = await new Future.value(3);

    print(result1 * future03);
  } catch (e) {
    print(e);
  } finally {
    print('completou');
  }
}

/**
 *  Sim é possível encadear os  then(), onde cada then() 
 * pode capturar  o retorno de seu antecessor
 *  
 */
