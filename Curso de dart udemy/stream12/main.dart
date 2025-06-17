void main() {
  final Stream<DateTime> stream = Stream.periodic(
    Duration(seconds: 1),
    (_) => DateTime.now(),
  );

  final subscription = stream.listen((onData) {
    print('Agora: ${onData.hour}:${onData.minute}:${onData.second}');
  });

  Future.delayed(Duration(minutes: 10), () => subscription.cancel());
}
