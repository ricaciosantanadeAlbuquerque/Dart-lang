/**
 *  TRATAMENTO DE EXCECAO!
 * - try: Usado para testar uma lógica.
 * - catch: Captura erros na lógica try.
 * - on:  Captura exceções já conhecidas pelo development
 * - thorw Exception(): Lança exceções. Exceções criada pelo usuário e tratada 
 * no catch() 
 * - finally: É executado ao final da lógica try/catch().  com exceção ou não!
 * Utilizado para liberar recursos na lógica try. Sempre será executando 
 * independete de entrar no try ou catch()
 * 
 * - Stack Trace: Rastreamento de pilha, permite o desenvolvedor rastrear a
 *  origem do erro. baseia-se  na leitura de linha ( decima para baixo), e caracteres
 *  (da esquerda para direita)
 */

/// Quando você não conhece a exceção use o try/catch
void caso1() {
  print('try Cathc()');

  try {
    int result = 1 ~/ 0;
    print('Resultado: $result \n');
  } catch (exception) {
    print('$exception');
  }
}

/// Quando você conhece a exceção
void caso2() {
  print('on');

  try {
    int resultado = 1 ~/ 0;
    print(resultado);
  } on UnsupportedError {
    print('Divisão inteira por zero não é possível');
  } catch (e) {
    print('Exception: $e');
  }
}

/// Para descobrir eventos ocorridos antes da excecao, use Stack Trace
void caso3() {
  print('Stack Trace');

  try {
    var result = 1 ~/ 0;
    print(result);
  } catch (e, s) {
    print('Exceção:$e');
    print('Stack Trace: $s');
  }
}

/// Use finally para tratamento apos a execução da logica try/catch
void caso4() {
  print('finally');

  try {
    print('Resultado: ${1 ~/ 0}');
  } catch (e) {
    print('Exception: $e');
  } finally {
    print('finally sempre será executado independente  de ser try ou catch');
  }
}

/// para criar e lançar uma exceção use throw Exception()

void caso5() {
  try {
    var resultado = 1 / 0;

    if (resultado.isInfinite)
      throw Exception('Divisão inteira por 0, infinito');

    print(resultado);
  } catch (e) {
    print('Exception: $e');
  }

  /**
   * lançada dentro do try e tratada dentro do catch()
   */
}

void main() {
  //caso1();
  //caso2();
  //caso3();
  caso4();
}
