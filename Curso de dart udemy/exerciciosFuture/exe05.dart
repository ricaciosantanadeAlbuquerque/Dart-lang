Future<void> main() async {
  try {
    var result = await excecao(tempo: 8);
    print(result);
  } catch (e) {
    print('Excecao: $e');
  }
}

Future excecao({required int tempo}) => Future.delayed(
  Duration(seconds: tempo),
  () => throw Exception('ERRO ! proposital.'),
);
