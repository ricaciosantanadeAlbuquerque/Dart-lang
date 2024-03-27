void main() {
  List<int> listInteiro = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  listInteiro.forEach((element) => print(element));

  List<int> inteiro = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanas = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print('');

  inteiro.forEach((e) => print(e));
  doubles.forEach((element) => print(element));
  boleanas.forEach((element) => print(element));
  frutas.forEach((e) => print(e));

  print('\n');
  print('\n');
  print('\n');

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');

  print('');

  frutas.forEach((e) => print(e));

  print(frutas);

  frutas.removeLast();
  frutas.removeWhere((element) => element == 'Abacaxi');
  frutas.forEach((element) => print(element));

  frutas.insert(0, 'Abacaxi');
  print('');
  print(frutas.elementAt(0));

  print(frutas.contains('abacaxi') ? 'Sim contem' : 'Não!! não contem'); // erro a linguagem é case sensitive Abacaxi != abacaxi

  // construtor Nomeado

  List<num> numero = List.from(inteiro)
    ..addAll(doubles)
    ..shuffle()
    ..sort();

  print(numero);
  print('');

  List<dynamic> listaDinamica = numero.take(3).skip(1).take(2).toList();

  print(listaDinamica);
  print('');
  List<String> listaPreenchida = List.filled(5, 'ricacio');

  listaPreenchida.forEach((e) => print(e));
  print('');

  List<String> listaGerada = List.generate(10, (index) {
    return 'Força e foco';
  }).toList();

  listaGerada.forEach((element) => print(element));

  
}
