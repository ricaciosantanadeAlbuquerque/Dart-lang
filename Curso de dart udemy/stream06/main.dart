import 'dart:async';


void main() {
  final Stream<int> stream = new Stream.value(120).asBroadcastStream();
  test01(stream);
  test02(stream);
  test03(stream);
}

void test01(Stream<int> stream) {
  stream.listen(
    (v) => print(v),
    onDone: () => print('Finalizado!'),
    onError: (error) => print('$error'),
  );
}

void test02(Stream<int> stream) {
  stream.listen(
    print,
    onDone: () => print('Finalizado !!'),
    onError: (error) => print(error),
  );
}

void test03(Stream<int> stream) {
  final StreamSubscription<int> sub = stream.listen((v) {
    print(v);
  });

  sub.onDone(() => print('finalizado !!!'));
  sub.onError((e) => print('Error $e'));
}
