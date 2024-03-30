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
}
