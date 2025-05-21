import 'dart:collection';


void main(List<String> args) {
  List<int> listaNumero = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  Set<int> setNumero = {1, 2, 3, 4, 5, 6, 7, 8, 90};
  Queue<int> queuenumero = Queue();
  queuenumero.addAll(listaNumero);

  Map<dynamic, dynamic> mapNumero = Map.from(listaNumero.asMap());

  /** 
   * A função forEach() em dart é um método utilizado para percorrer todos os elementos de uma coleção
   * seja ela List Set Queue ou Map
   * 
   */
  /// op 01
  listaNumero.forEach((element) {
    print(element);
  });

  /// op 02
  listaNumero.forEach(print);
  print('\n');

  /// set forEahc()
  /// 01 op
  setNumero.forEach((value) => print(value));

  /// 02 op
  setNumero.forEach(print);

  /// op 01 Queue
  queuenumero.forEach((value) => print(value));

  /// 02 Queue
  queuenumero.forEach(print);

  /// 01
  mapNumero.forEach((key, value) {
    print('chave:$key,value:$value');
  });

  /// 02
  mapNumero.forEach((key, value) => print('key:$key, value:$value'));

  // -----------------------expand--------------------------------

  var listaMatriz = [
    [1, 2],
    [3, 4],
    [5],
  ];

  var novaLista = listaMatriz.expand((element) => element);

  print(novaLista);

  List<String> palavras = ['oi', 'Olá'];

  var letras = palavras.expand((value) => value.split(''));

  print(letras);

  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  var listUnica = matriz.expand((value) {
    return value;
  });

  print(listUnica.toList());

// expandido ou duplicando os valores  da matriz
  var listaConcatenada = matriz.expand((value) => [value, value]);

  print(listaConcatenada);

  /// Trabalhando com map()

  List<int> numeros = [1, 2, 3];

  var listDobro = numeros.map((element) => element * 2);

  print('Iterable: $listDobro');
  print('O tipo desta coleção é ${listDobro.runtimeType}');
  print('Passando para lista: ${listDobro.toList()}');

  Map<String, int> estoque = {'maça': 2, 'banana': 3};
  var resultado = estoque.map((key, value) => MapEntry(key, '$value Unidade'));

  print(resultado);
  print('Tipo: ${resultado.runtimeType}');

  var resultado2 =
      estoque.entries.map((entri) => '${entri.key}: ${entri.value} Unidade');

  print(resultado2);
  print('tipo: ${resultado2.runtimeType}');

  var funcao = (value) => print(value);
  var funcaoMap = (key, value) => print('${key}: ${value}');
  resultado2.forEach(funcao);
  resultado.forEach(funcaoMap);

  Set<int> setNum = {55, 54, 66, 36};

  final Iterable result = setNum.map((element) => element * 3);
  print(result);

  List<String> nomes = [
    'Ana',
    'Lucas',
    'Dora',
    'Ricacio',
  ];
  var cont = 0;
  var listN = nomes.map((e) {
    return '$e:${cont++}';
  });

  print(listN);

  /// Trabalhando com a  funcao every()

  List<double> salario = [
    1412.00,
    1900.00,
    2400.00,
    2900.00,
    3400.00,
    3900.00,
    4400.00
  ];

  final List<String> novoSalario = salario
      .map((e) => 'R\$ ${e.toStringAsFixed(2).replaceAll('.', ',')}')
      .toList();

  print(novoSalario);

  // verificando se todos ganha acima de 1000

  bool resultado12 = salario.every((element) => element > 1000);
  print('Todos ganham acima de 1000 ? $resultado12');

  Queue<int> numeros12 = Queue();
  numeros12.add(2);
  numeros12.add(4);
  numeros12.add(8);
  numeros12.add(6);

  bool todosPares = numeros12.every((element) => element % 2 == 0);

  print(todosPares ? 'Sim' : 'Não');

  List<int> valoresInt = [2, 4, 5, 6, 8];

  var todosPares01 = valoresInt.every((e) => e % 2 == 0);

  print(todosPares01);

  List<String> nomes001 = ['Ana', 'Amanda', 'Arthur'];

  bool todosComA = nomes001.every((e) => e.startsWith('A'));
  print('Todos começam com A ? $todosComA');

  var r = [].every((e) => e == 1);

  print(r);

  // Trabalahndo  com a função where() para filtrar dados

  List<int> num1 = [100, 101, 102, 103, 104, 105, 106, 107, 108, 109];

  // ignore: unused_local_variable
  final mapa = num1.asMap(); // converte  uma lista em Map<>

  // filtrando os dados maiores que 105

  final resultado13 = num1.where((element) => element >= 105);

  print(resultado13);

  List<String> nomes13 = ['Ana', 'Bruno', 'Alice', 'Carlos'];

  var novoNome = nomes13.where((element) => element.startsWith('A'));

  print(novoNome);

  List<Produto> listProduto = [
    Produto('Café', 10.0),
    Produto('Leite', 5),
    Produto('Bolo', 20.0),
  ];

  // filtrando produtos

  Iterable<Produto> produtosBaratos =
      listProduto.where((produto) => produto.preco < 15);

  print('Lista de produtos baratos: $produtosBaratos');

  SplayTreeSet listaNN = SplayTreeSet();
  listaNN.addAll([
    10,
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
  ]);
  print(listaNN);

  /// trabalhando com reduce()
  ///
  ///
  // soma de todos os valores
  var soma = listaNN.reduce((acumulador, elemento) => acumulador + elemento);
  print('Soma dos valores : $soma');

  var maior = listaNN.reduce(
      (acumulador, elemento) => acumulador > elemento ? acumulador : elemento);

  print(maior);

  final int menor =
      listaNN.reduce((value, element) => value < element ? value : element);
  print(menor);

  //[].reduce((a, b) => a + b); // ERRO!

  /// trabalhando com  fold()

  var produtoMaisCaro = listProduto.fold(
      0.0,
      (accumulator, element) =>
          accumulator > element.preco ? accumulator : element.preco);
  var produtoMaisBarato = listProduto.fold(
      0.0,
      (accumulator, element) =>
          (accumulator < element.preco && accumulator != 0.0)
              ? accumulator
              : element.preco);

  print(
      'Produto mais Barato: $produtoMaisBarato, produto mais caro: $produtoMaisCaro');

  var somaProdutos = listProduto.fold(
      0.0, (accumulator, produto) => accumulator + produto.preco);

  print('Valor total da lista $somaProdutos');
}

class Produto {
  late String nome;
  late double preco;

  Produto(this.nome, this.preco);

  @override
  String toString() => 'Nome:$nome, Preço:$preco';
}
