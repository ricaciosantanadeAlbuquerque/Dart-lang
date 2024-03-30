void main(List<String> args) {
  List<int> numerosPares = List.generate(6, (index) {
    return index * 2;
  });

  print(numerosPares);

  int somaValores = numerosPares.reduce((int anterior, int atual) {
    print('Anterio:$anterior + Atual:$atual');
    return anterior + atual;
  });

  print(somaValores);

  List<bool> boleanas = [true, false, !true, !false];
  print(boleanas);
  bool and = boleanas.reduce((bool anterior, bool atual) => anterior && atual);
  print(and);

  bool or = boleanas.reduce((anterior, atual) => anterior || atual);
  print(or);

  List<int> idade = [36, 12, 18, 31, 17, 23];
  // reduzindo a lista idade para o menor valor
  int menor = idade.reduce((int anterior, int atual) => (anterior > atual) ? atual : anterior);
  int maior = idade.reduce((int anterior, int atual) => (anterior < atual) ? atual : anterior);
  int media = idade.reduce((int anterior, int atual) {
    return anterior + atual;
  });
  print('Menor:$menor, Maior:$maior, Média:${(media / idade.length).toStringAsFixed(1)}');

  List<double> salario = List.generate(12, (index) {
    // 0 a 11
    return 1670.00; // 1 a 12
  });

  salario.forEach((element) => print(element));

  double valorAnualSalario = salario.reduce((double anterior, double atual) => anterior + atual);

  print('O valor anual:$valorAnualSalario');

  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  List<int> test = matriz.reduce((anterior, atual) => anterior + atual); // + concatena Listas !!!!!!!!!!!!
  print(test);
}
