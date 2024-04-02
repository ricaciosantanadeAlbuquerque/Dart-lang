void main(List<String> args) {
  List<int> numerosGerados = List.generate(10, (int index) {
    return index * 3;
  });

  // mostrando os valores da lista com forEach();
  print(numerosGerados);
  print('');
  numerosGerados.forEach((element) {
    print(element);
  });

  final List<int> listaDobrada = numerosGerados.expand((element) => [element, element]).toList();

  print(listaDobrada);

  var matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  // concatenando elementos da matriz, para gerar uma litas nova

  final List<int> vetor = matriz.expand((element) {
    return element;
  }).toList();
  print('\n');
  print(vetor);
  print('');

  vetor.forEach((element) => print(element));

  // mapeando a lista de inteiros para uma lista de double.

  List<double> num1 = vetor.map((element) {
    return element.toDouble();
  }).toList();
  print(num1);
  print(num1.map((element) => element * 3).toList());
  final funcao = (element) => '${element.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  double Function(double) porsentagem(double desconto) => (double valor) => desconto * valor;

  print('${num1.map((element) => element * 3).map(porsentagem(0.9)).toList()}');
  print('${num1.map((element) => element * 3).map(porsentagem(0.9)).map(funcao).toList()}');

  // testando a lista com a função every()
  print('');
  print(num1);
  bool resposta = num1.every((element) => element > 0);
  print(resposta ? 'Sim a lista está aprovada' : 'Não há valores < 0');

  List<String> nomes = ['Ana', 'Dora', 'Lucas', 'Carmem', 'Biza', 'ricacio'];
  print('');
  print(nomes.every((element) => element.contains('a')) ? 'Sim ! existe.' : ' Não ! existe.');

  num1.forEach((element) => print(element));

  // filtrando  elementos  where()

  List<double> valor2 = num1.where((element) => element > 3).toList();
  print(valor2);

  var num2 = num1.whereType<int>().toList();

  print(num2);

  var num3 = num1.singleWhere((element) => element >= 9, orElse: () => 0);
  var num4 = num1.lastWhere((element) => element > 9, orElse: () => 0);
  print(num3);
  print(num4);

  // fold() && reduce()
  // reduzindo a lista com reduce()

  double somaValor = num1.reduce((anterior, atual) => anterior + atual);
  print('');
  print(somaValor);

  double menorValor = num1.reduce((anterior, atual) {
    return (anterior > atual) ? atual : anterior;
  });
  print('');
  print(menorValor);

  double maiorValor = num1.reduce((anterior, atual) => (anterior > atual) ? anterior : atual);

  print(maiorValor);

  double media = num1.fold(0.0, (anterior, atual) {
    return anterior + atual;
  });
  print(media);
  print(num1.length);
  print(media / num1.length);

  List<num> numerico = [2.5, 3, 4, 7.5, 10, 5.5, 8.5];

  num acumulador = numerico.fold(0, (anterior, atual) => anterior + atual);
  print(acumulador);
}
