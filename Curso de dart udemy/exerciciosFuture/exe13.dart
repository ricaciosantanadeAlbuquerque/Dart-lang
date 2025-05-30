void main() async {
  //subtracao(450, 100).then((v) => print(v));
  //multiplicacao(valor1: 3, valor2: 9).then((v) => print(v)); // 2
  //print(soma(20, 75)); // 1

  // ===========================================================================

  /// valor predefinido
     try {
    var valor = await valorPredefinido();
    print(valor);
  } catch (e) {
    print(e);
  }



  try {
    var error = await erroPredefinido();
    print('EPAAAAAAAA $error');
  } catch (e) {
    print(e);

  }
}

String soma(int valor1, int valor2) => '01 ${valor1 + valor2}';

Future<String> subtracao(int valor1, int valor2) => Future(() {
  return ' 02 ${valor1 - valor2}';
});

Future<String> multiplicacao({required num valor1, required num valor2}) {
  return Future.microtask(() {
    return ' 03 ${valor1 * valor2}';
  });
}

Future<int> valorPredefinido() => Future.value(5);

Future<String> erroPredefinido() => Future.error('Erro! algo deu Errado');
