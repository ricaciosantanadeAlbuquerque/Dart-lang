void main() {
  //caso1();
  caso6();
}

void caso1() {
  print('try/catch');

  try {
    int result = 1 ~/ 0;
    print('Resultado:$result');
  } catch (e) {
    print('Exceção:$e');
  }
}

void caso2() {
  print('on');

  try {
    int result = 1 ~/ 0;
    print('Rseultado:$result');
  } on UnsupportedError {
    print('Não é possível fazer divições inteiras por 0');
  } catch (e) {
    print('exceção:$e');
  }
}

void caso3() {
  print('Stack Trace');

  try {
    int valor1 = 1, valor2 = 0;
    int result = valor1 ~/ valor2;
    print('Resultado: $result');
  } catch (e, s) {
    print('Exceção:$e');
    print('Stack Trace: $s');
  }
}

void caso4() {
  print('finally');
  try {
    int result = 1 ~/ 0;
    print('Resultado:$result');
  } catch (e) {
    print('Exceção:$e');
  } finally {
    print('O finally sempre será executado');
  }
}

void caso5() {
  print('throw Exception()');

  try {
    int num1 = 1, num2 = 0;
    var result = num1 / num2;
    if (result.isInfinite)
      throw Exception('O valor de num2 deve ser diferente de zero.');
    print('Resultado:$result');
  } catch (e) {
    print('Exceção:$e');
  }
}

void caso6() {
  try {
    int valor1 = 1, valor2 = 0;
    double result = valor1 / valor2;
    if (result.isInfinite) throw Exception('O valor da variável valor2, deve ser diferênte de zero.');
    print('resultado:$result');
  } on UnsupportedError {
    print('Não é possível fazer uma divisão inteira por zero');
  } catch (e, s) {
    print('Exceção:$e');
    print('Stack Trace: $s');
  } finally {
    print('O finally Sempre será executando!!');
  }
}
