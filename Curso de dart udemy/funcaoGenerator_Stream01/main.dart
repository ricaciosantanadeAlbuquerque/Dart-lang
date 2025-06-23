void main(List<String> args) {
  final Iterable<int> result = iterableCollection(maxValue: 15);
  result.forEach((e) => print(e));

  funcaoRecursiva(50).forEach(print);

  int result1 = soma(iterable: cotagem(maxvalue: 20));
  print('Soma: $result1');
}

/// Função Generator de Iterable
Iterable<int> iterableCollection({int maxValue = 0}) sync* {
  int i = 0;

  while (i < maxValue) yield ++i;
}

/// funcao Generator Iterable recursiva

Iterable<int> funcaoRecursiva(int maxValue) sync* {
  for (var i = 1; i <= maxValue; i++) {
    yield i;
    yield* funcaoRecursiva(i - maxValue);
  }
  // Sempre começe com 1 se não teremos loop infinito
}

/// tratando valores e lançando exception com Funcões Generators

int soma({required Iterable iterable}) {
  int soma = 0;
  try {
    // devemos esperar que tudo seja finalizado await
    for (var value in iterable) {
      soma += value as int;
    }
  } catch (e) {
    print(e);
    return -1;
  }
  return soma;
}

/// Generator Iterable yield sync*
Iterable<int> cotagem({int maxvalue = 10, int erro = 0}) sync* {
  for (int i = 1; i <= maxvalue; i++) {
    if (i == erro) {
      throw Exception('ERRO Intencional !!!');
    } else {
      yield i;
    }
  }
}
