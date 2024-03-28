void main() {
  List<int> inteiros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // A  função every() testa cada elemento da lista e se todos eles forem true então a função every() retorna true

  // ignore: unnecessary_type_check
  print(inteiros.every((e) => e is int));

  var resultado = inteiros.every((element) => element is int);
  print(resultado);

  print(inteiros.every((e) => e > 0));

  List<double> num1 = [2.2, -1.0, 100.00, 55.5];

  // fazendo um teste para saber se todos os lementos da lista estão acima de zero

  bool test = num1.every((element) => element > 0);
  print(test ? 'Sim todos os elementos da lista são maiores do que 0' : 'Não a Lista não foi aprovada');

  List<String> nome = ['ana', 'ricacio', 'biza', 'lucas', 'carmem', 'dora'];
  print(nome.every((e) => e.contains('a')) ? 'Sim' : 'Nao');
  print(nome.every((e) => e.contains('e')) ? 'Sim' : 'Nao');
}
