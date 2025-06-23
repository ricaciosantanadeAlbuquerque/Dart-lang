/**
 * Função Generators ou (geradoras), são funções que produzem valores 
 * podem ser sincronas ou assincronas
 * Funções sincronas: sync* retorna uma coleção do tipo Iterable
 * Funções assincronas: async* Stream()
 * 
 * yield é útilizado em funções geradoras sincronas e assincronas
 * adiciona o valor ao fluxo de saída da função sincrona ou assincrona *
 * retornando o valor sem encerrar a função
 */

void main() async {
  //funcaoSincrona(10).forEach(print);
  // funcaoAssincrona(45).forEach(print);
  //
  //funcaoRecursivaAssincrona(50).forEach((e) {
  //print('Value: $e');
  //});

  /**
   * Acumulando os valores de uma stream
   */

  int soma = await streamSoma(streamContagem(10, erro: 3)); // com erro
  print(soma);

  int soma1 = await streamSoma(streamContagem(10, erro: 0)); // sem erro
  print(soma1);
}

/// Funcao Geradora sync* => Iterable
Iterable<int> funcaoSincrona(int maxValue) sync* {
  int i = 0;
  while (i < maxValue) yield ++i;
}

/// Funcao Geradora async* => Stream
Stream<int> funcaoAssincrona(int maxValue) async* {
  for (var i = 1; i <= maxValue; i++) {
    yield i;
  }
}

/**
 * Stream é uma lista de eventos futuros, diferente da Future que retorna um único valor Futuro,
 * a Stream retorna vários Futuros resultado de operações assincronas.
 */

/// funcao Geradora recursiva yield* async*
Stream<int> funcaoRecursivaAssincrona(int maxValue) async* {
  for (var i = 1; i <= maxValue; i++) {
    yield i;
    yield* funcaoRecursivaAssincrona(i - maxValue);
  }
}

/// tratando valores com try catch

Future<int> streamSoma(Stream stream) async {
  int soma = 0;
  try {
    await for (int i in stream) {
      soma += i;
    }
  } catch (e) {
    print(e);
    return -1;
  }

  return soma;
}

Stream<int> streamContagem(int termino, {int erro = 0}) async* {
  for (var i = 1; i <= termino; i++) {
    if (i == erro) {
      throw Exception('ERRO!! intencional');
    } else {
      yield i; // stream
    }
  }
}
