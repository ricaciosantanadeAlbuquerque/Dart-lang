void main(List<String> args) {
  List<num> numeros = List.generate(100, (index) {
    return ++index;
  });

  print(numeros);

  num somaValores = numeros.reduce((num anterior, num atual) {
    return anterior + atual;
  });
  print('Soma des valores ${somaValores}');

  num somaValores1 = numeros.fold(0.0, (anterior, atual) => anterior + atual);
  print('');
  print(somaValores1);

  var valorInicial = 5050;

  num decremento = numeros.fold(valorInicial, (anterior, atual) {
    return anterior - atual;
  });

  print(decremento);

  List<double> valores = List.generate(12, (index) => 10);

  double soma = valores.fold(0.0, (anterior, atual) => anterior + atual);
  print(soma);

  List<int> num1 = [15, 12, 50, 25, 30];

  num maiorvalor = num1.fold(0, (anterior, atual) => (anterior > atual) ? anterior : atual);
  print(maiorvalor);

  num menorValor = num1.fold(100, (anterior, atual) => (anterior < atual) ? anterior : atual);
  print(menorValor);

  num media = num1.fold(0, (anterior, atual) => anterior + atual) / num1.length;

  print(media.truncate());

  /**
   * forEach()
   * expand()
   * map()
   * every()
   * where()
   * reduce()
   * fold()
   */
  listFoldReduce();
}

void listFoldReduce() {
  // ================================================= reduce ============================================

  List<double> salario = [1500, 1670, 3500];

  double menorSalario = salario.reduce((double anterior, double atual) {
    print('$anterior && $atual');
    return (anterior > atual) ? atual : anterior;
  });

  print('O menor salário da lista é $menorSalario');

  double maiorSalario = salario.reduce((double anterior, double atual) {
    return (anterior > atual) ? anterior : atual;
  });

  print('O  maior Salário da lista é $maiorSalario ');

  double somaValores = salario.reduce((double anterior, double atual) => anterior + atual);

  print('A soma dos valores $somaValores');

  print('Média dos salários ${(salario.reduce((double anterior, double atual) => anterior + atual) / salario.length).toStringAsFixed(1)}');

  // fold() ===========================================================================================================================
  print('');
  print(salario);
  double menorSalario1 = salario.fold(0.0, (anterior, atual) => (anterior > atual) ? atual : anterior);
  print(menorSalario1);
  double maiorSalario1 = salario.fold(0.0, (anterior, atual) => (anterior > atual) ? anterior : atual);
  print(maiorSalario1);
  double media = salario.fold(0, (anterior, atual) => anterior + atual);

  print('Media: ${(media / salario.length).toStringAsFixed(2)}');
}
