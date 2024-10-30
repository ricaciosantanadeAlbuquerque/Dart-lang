/**
 * - try: Usado para testar uma lógica.
 * - catch: Captura erros na lógica try.
 * - on: captura exceções já conhecidas ou melhor, trata exceções conhecidas
 * - throw Exception: Exceção criada pelo usuário, e tratada no catch()
 * - finally: Executado ao final da lógica try/catch, com exceção ou não! Utilizado para liberar recursos na lógica try.
 */

void main() {
  //caso1();
  //caso2();

  //caso3();

  //caso4();

  //caso5();

  caso6();
}

void caso1() {
  print('try Catch()');

  try {
    int result = 1 ~/ 0; // Não é possível fazer uma divisão inteira por zero.
    print('Resultado: ${result}');
  } catch (e) {
    print('Exceção:$e');
  }
}

void caso2() {
  print(' try on  catch()');

  try {
    int result = 1 ~/ 0;
    print('Resultado: $result');
  } on UnsupportedError {
    print('Não é possível fazer divisão inteira por zero');
  } catch (e) {
    print('Excecao:$e');
  }
}

void caso3() {
  print('Stack Trace\n');

  try {
    int result = 1 ~/ 0;
    print('Resultado: $result');
  } catch (e, s) {
    print('Exceção: $e');
    print('Stack Trace: $s'); // rastreamento de pilha
  }
}

void caso4() {
  print('finally\n');

  try {
    int valor = 1, valor2 = 0;
    int result = valor ~/ valor2;
    print('Resultado:$result');
  } catch (e) {
    print('Exceção:$e');
  } finally {
    print('finally: Com ou sem exceção o "finally" sempre será executado.');
  }
}

void caso5() {
  print('throw Exception');

  try {
    int valorA = 1, valorB = 0;
    double result = valorA / valorB; // divisão com ponto flutuante.

    if (result.isInfinite)
      throw Exception('A variável valor B, deve ser diferente de Zero');

    print('Resultado:$result');
  } catch (e) {
    print('Exceção: $e');
  } finally {
    print(
        'O finally sempre será executado endependentemente de ser executado try ou catch');
  }
}

void caso6() {
  try {
    int num1 = int.parse('B');
    int num2 = int.parse('c');
    print('Soma ${num1 + num2}');
  } on UnsupportedError  {
    print('Não é possível fazer divisão inteira por zero');
  } catch (e, s) {
    print('Exceção:$e');
    print('Stack Trace: $s');
  } finally {
    print('Sempre será executado!!');
  }
}
