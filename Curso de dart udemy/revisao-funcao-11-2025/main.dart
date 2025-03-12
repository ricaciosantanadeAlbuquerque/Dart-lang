void main() {
  List<int> km = [12, 11, 22, 5];

  converterKMpramilha(km);
  print(somaValores(40, 50));
  print(calcularAreaCirculo(12));
  print(exibirDados2('RIcacio', peso: 68, altura: 1.72));
  exibirDados1('Lucas',68,1.80);
}

converterKMpramilha(dynamic array) {
  const dynamic milhar = 0.621271;

  for (dynamic item in array) {
    print('$item\t km/h em Milhas/h ${(item * milhar).toStringAsFixed(2)}');
  }
}

String somaValores(int valorA, int valorB) =>
    'Soma $valorA + $valorB = ${valorA + valorB}';

String calcularAreaCirculo(double raio) =>
    'Area do circulo: ${3.14 * (raio * raio)}';

void exibirDados1(String nome, [int peso = 0, double altura = 0]) {
  print('Nome: $nome, peso: $peso, altura: $altura');
}

String exibirDados2(String nome, {int peso = 0, double? altura}) {
  return 'Nome: $nome peso:$peso altura: ${altura ?? 'Não informado !'}';
}
