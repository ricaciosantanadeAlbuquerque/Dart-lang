import '../Relacionamento_Entre_Classes05/atum.dart';

void main(List<String> args) {
  lista();
}

/// Lista é uma coleção dinâmica de elementos separados por virgula e indexados, contidos por []. Aceitam valores redundantes e podem
/// ser acessados por index.
void lista() {
  List<int> numero = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  /// Fazendo  iteracao com  forEach()

  numero.forEach((element) => print('Valores numericos $element'));

  /**
   * forEach() deve receber como argumento uma função anônima com parâmetro e sem retorno.
   * Por sua vez forEach() não tem retorno. Esta função é muito utilizada para fazer interações.
   * PS! O parâmetro da função forEach()  enxerga cada elemento da lista.
   */

  // ======================insert()=========================

  /**
  * A função insert inseri um elemento na lista, de acordo com a POSIÇÃO passada como argumento. 
  * Insert() precisa recenber dois argumento,  A posição  e o elemento.
  */
  print('\n');
  numero.insert(0, 250);
  print(numero);

  // ======================removeLast()=========================

  /**
   * Remove o ultimo elemento da lista.
   */

  numero.removeLast();
  print('Lista removeLast(): $numero'); // o elemento 10 que era o ultimo foi deletado.

  /**
   * removeWhere() Deve receber como argumento uma função anônima com parâmetro, e  que retornar um tipo booleano.
   * removeWhere() não tem retorno.
   * Se true o elemnto é removido da lista. se false o elemento fica  na lista.
   *  PS! O parâmetro da função forEach()  enxerga cada elemento da lista.
   */
  print('\n');
  numero.removeWhere((element) => element == 9); // se true  então remove
  print(numero);

  // ======================elementAt()=========================

  /**
   *  Mostra os elementos da lista de acordo com a posição passada como argumento.
   * elementAt() Precisa receber  um argumento 
   */
  print('\n');
  print(numero.elementAt(5));

  for (var j = 0; j < numero.length; j++) {
    print(numero.elementAt(j));
  }

  // ======================contains()=========================
  /**
   * A função contains() deve receber como argumento um element,  e fazer uma Iteração na lista numero.
   * Buscando o valor passado como argumento. E se encontrar, retorna true.
   */

  var result = numero.contains(4);
  print(result);
  var test = numero.contains(300);
  print(test);

  // ======================addAll()=========================
  /**
   * Adiciona todos os elemntos de uma coleçao passada como argumento. Para coleção que evoca a função.
   */

  List<int> valores = [];
  valores.addAll(numero); // valores evoca addAll() passando numeros como argumento. valores adiciona todos os elementos de numero.
  print(valores);
  valores.addAll([12, 13, 14, 15, 16, 250, 22, 5000, 450, 86]);
  print(valores);

// ======================shuffle()=========================
/**
 * Embaralha todos os elemntos  da lista.
 */
  print(numero);
  numero.shuffle();
  print(numero);

  // ======================sort()=========================
  /**
  * Ordena todos os elementos da lista. 
    Se for uma lista numérica, todos os elementos da lista serão ordenados automaticamente em ordem crescente.
    para ordenar uma lista em decrescente. sort((b,a) => a.compareTo(b)); 
    e para crescente sort((a,b) => a.compareTo(b))
  */

  print('\n');

  numero.sort();
  print(numero);
  numero.sort((a, b) => a.compareTo(b));
  print(numero);
  numero.sort((b, a) => a.compareTo(b));
  print(numero);
  // uma vez que aplicamos a função sort() ela fica ordenada.
// ======================List.from()=========================

/**
 * O construtor nomeado  deve receber como argumento uma coleção, Os elementos desta coleção passado como argumento serão alocados  
 * no objeto "List" que recebe a instância  de List via construtor nomeado List.from([])
 */

  List<double> num1 = new List.from([
    1.1,
    2.2,
    3.3,
    4.4,
    5.5,
    6.6,
  ]);
  //<> generics, permite ao desenvolvedor tipar uma classe
  print(num1);

// ======================take()=========================
/**
 * Captura uma quantidade de elementos da lista de acordo com a parâmetro passado como argumento.
 */

  print(num1.take(3));
  /**
  * Como passamos o valor 3 como argumento, então serão capturados os três primeiros valores da coleção.
  */

// ======================skip()=========================
/**
 * A função Skip() ignora ou pula os elemntos de uma coleção de acordo com o argumento passado
 */

  print(numero.skip(3));
  print(valores.skip(6));

// ======================List.generate()=========================
/**
 * List.generate(qtd,(index) =>)
 * O construtor nomeado List.generate(), deve receber dois parâmetros QDT e uma função anônima com parâmetro, onde o parâmetro da função
 * anônima  enxerga os index da lista. a função anônima deve retornar um elemento para List.generate() que gera uma nova lista.
 */

  List<int> listValores = new List.generate(10, (index) => index++);
  print(listValores);

  var num2 = List.generate(14, (index) {
    return ++index;
  });
  print('Lista gerada $num2');

// ======================forEach()=========================
// Deve receber como argumento um função anônima com parâmetro e sem retorno.
// o parâmetro da função anônima enxerga cada elemento da lista.
// forEach() Não tem retorno, faz Iterações sobre listas ou coleções

  num2.forEach((element) => print(element));

// ======================expand()=========================
  /**
  * Deve receber como argumento uma função anônima com parâmtro e com retorno genérico. 
  expand() retorna uma coleção de Iterable
 o parâmetro da função anônima enxerga cada elemento da lista. 

  */
  var matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [6, 7, 9]
  ];
  Iterable colecaoConcatenada = matriz.expand((element) => element);
  print(colecaoConcatenada);

// ======================map()=========================
  /**
  * Deve receber como argumento uma função anônima com parâmetro e com retorno genérico,
   map() por sua vez, retorna uma coleção e Iterable
   o parâmetro da função anônima enxerga cada elemento da lista. 

  */

  Iterable<int> listaTriplicada = numero.map((element) => element * 3);
  print(listaTriplicada);
  // convertendo para lista use : to.List()

  print(listaTriplicada.toList());

// ======================every()=========================
/**
 * Deve receber como argumento uma função anônima como parâmetro, e que retorna um tipo bool.
 * every() retorna um tipo bool, o parâmetro da função anônima enxerga cada elemento da lista. 
 * every() faz um teste lógico em cada elemento da coleção,via parâmetro da função anônima, utilizando o operador &&
 * se todos forem true então every retornará true massss se apenas um elemento for false então every retornará false 
 */

   bool resultado = listaTriplicada.every((e) => e > 0);
   print('Todos são maiores que zero ? ${resultado ? 'Sim' : 'Não'}');
   print('Todos são maiores que 10 ? ${(listaTriplicada.every((e) => e > 10)) ? 'Sim':'Não'}');

// ======================where()=========================
/**
 * Deve receber como argumento uma função anônima com parâmetro e com retorno  booleano.
 * where() retorna uma coleção filtrada do tipo Iterable.
 * A função where() é utilizada para fazer filtragem em coleções. 
 */

 var listFiltrada = listaTriplicada.where(((e) => e > 10)); // estamos filtrando listaTriplicada
 print(listFiltrada.runtimeType);
 print(listFiltrada);

 List<int> num3 = [100,200,300,1,2,3,4,5,6].where((e) => e <  100).toList(); // queremos uma lista com os valores abixo de 100
 // toList() converte para lista.

 print(num3);

 // ======================reduce()=========================
 /**
  * Deve receber como argumento uma função com dois parâmetros anterior e atual
    onde o anterior é index 0 e o atual é index 1, todo resultado de qualquer operação será 
    guardado em anterior.
    Afunção reduce() reduz uma lista ou coleção a um único valor 

  */

 int soma  =  num3.reduce((anterior,atual) => anterior + atual);
 int menorValor = num3.reduce((anterior,atual) => anterior < atual ? anterior : atual);
 int maiorValor = num3.reduce((anterior,atual) => anterior > atual ? anterior : atual);
 int media =  soma ~/ num3.length;
 print('Soma:$soma, menor:$menorValor, maior:$maiorValor, media:$media');


 // ======================fold()=========================
 /**
  * fold(start,(anterior,atual) => )
  * Deve receber dois argumentos um valor de início start e uma função com dois parâmetros (ant,atu) =>.
    fold() reduz uma coleção a um único termo.
     anterior será o valor de início e o atual será o index 0
  */

  int soma2 = num3.fold(0,(ant,atu) => ant + atu); // reduzimos a coleção num3 a um único valor de retorno
  print(soma2);
  int menor2 = num3.fold(0,(ant,atu) =>  ant <  atu ? ant : atu);
  int maior2 = num3.fold(0,(ant,atu) => ant > atu ? ant : atu);
  print(menor2);
  print(maior2);
}

/**
 * forEach()
 * expand()
 * map();
 * every()
 * where()
 * reduce()
 * fold()
 */
