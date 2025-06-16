void main() async {
  var stream = Stream.periodic(
    Duration(seconds: 1),
    (e) => e + 1,
  ).take(5).asBroadcastStream();

  stream
      .takeWhile((e) => e <= 5)
      .skipWhile((e) => e > 3)
      .take(3)
      .map((e) => e.toString().padLeft(2, '0'))
      .listen((e) {
        print(e);
      });

  // =================

  
  /**
   * // ==================
  stream.forEach((e) {
    print('forEach:$e');
  });

  // ====================
  await for (var i in stream) {
    print('for:$i');
  }

   */
  var list = stream.toList();
  print(await list);
}
