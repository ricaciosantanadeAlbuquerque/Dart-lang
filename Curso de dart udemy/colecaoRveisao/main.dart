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

List<int> listValores = new List.generate(10,(index) => index++);
print(listValores);

var num2 = List.generate(14,(index){
     return ++index;
});
 print('Lista gerada $num2');


// ======================forEach()=========================

  num2.forEach((element) => print(element));

// ======================expand()=========================
 
var matriz = [[1,2,3],[4,5,6],[6,7,9]];
Iterable colecaoConcatenada  = matriz.expand((element) => element);
print(colecaoConcatenada);
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
