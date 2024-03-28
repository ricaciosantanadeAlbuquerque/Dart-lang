void main(List<String> args) {
  List<List<int>> Matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  // uma matriz 3 por 3

  // concatenando  elementos de uma lista  com o uso da função expand()

  List<dynamic> listFlat = Matriz.expand((e) => e).toList();
  /**
   * Quando uso a função expand() em uma Matriz, posso concatenar seus elemento [listas] para gerar uma nova lista.
   */

  listFlat.forEach((e) => print(e));

  // duplicando  a lista

  List<dynamic> listDuplicada = listFlat.expand((element) => [element, element]).toList();

  /**
   * Já quando uso a função expand() em um array comum,  não é possível concatenar elementos da lista para gerar uma lista menor.
   * Mas é possível e expandi-la.
   */

  print('');
  print(listDuplicada);

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiro = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<int> listJustas = inteiro + [5, 15, 25];

  print('\n');
  print(listJustas);

  List<dynamic> valores = listJustas.expand((int element) {
    return [element, element];
  }).toList();

  print('');

  print(valores);
  print('');
  valores.forEach((e) {
    print(e);
  });

  print('');
  print('\n');

  print(valores = []
    ..addAll(inteiro)
    ..addAll(doubles));

  print('');
  print('');
  print(valores = [0, ...inteiro, 15]);
  print(valores = [...[], ...inteiro, if (doubles is List<double>) ...doubles]);
  print('');
  print(valores = [...inteiro,for(var j  in numeros) j]);
}
