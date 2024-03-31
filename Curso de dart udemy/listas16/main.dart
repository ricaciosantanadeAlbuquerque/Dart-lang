void main(List<String> args) {
  fold();
}

void fold() {
  List<double> salario = [1200, 889, 1412, 2500, 3500, 8790, 250, 10000];

  // o Maior  salário usando fold()

  double maiorSalarior = salario.fold(0, (anterior, atual) {
    return (anterior > atual) ? anterior : atual;
  });

  print('O maior salário é $maiorSalarior');

  // o o menorSalario usando fold()

  double menorSalario = salario.fold(1000000, (double anterior, double atual) => (anterior > atual) ? atual : anterior);

  print('O menor salário é $menorSalario');

  // media dos salários

  double somaValores = salario.fold(0, (double anterior, double atual) {
    return anterior + atual;
  });

  print('Soma dos valores é $somaValores');

  // média dos salários

  print('${(salario.fold(0.0, (anterior, atual) {
    return anterior + atual;
  }) / salario.length).toStringAsFixed(2)}');
}
