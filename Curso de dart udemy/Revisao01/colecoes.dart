import 'dart:math';

void main(List<String> args) {
  colecoes(); // chamada a função
}

void colecoes() {
  /// declaramos e inicializamos uma lista.
  List<int> listNumeros = [1, 2, 3];
  listNumeros.insert(0, 55); // inserindo valores apartir da possição passada.
  print(listNumeros);
  listNumeros.add(155); // inserindo elementos da ultima possição.
  print('');
  print(listNumeros);
  listNumeros.removeLast(); // remove o ultimo elemento da lista.
  print('');
  print('Tamanho da lista ${listNumeros.length}'); // length mosta o tamanho da lista
  print('Elemento da posição 3 é : ${listNumeros.elementAt(0)}'); // elementAt() recebe como argumento a posição ou index da lista.
// e retorna  o valor contido nesta posição

  for (var i = 0; i < 3; i++) {
    listNumeros.add(Random().nextInt(10 + 1)); // gerando valores inteiros de forma aleatória.
  }

  print('');
  print(listNumeros);
  listNumeros.removeWhere((element) => element == 10); // todo element que for igual 10 pode remover. Se houver
/**
 * removeWhere((e) => e > 0);
 *  se true , então remove.
 *  se false , então fica na lista.
 * 
 */
  print('\n');
  print(listNumeros);

// buscado valores com  contains()
  print('O valor 3 existe na lista ??? ${listNumeros.contains(3) ? 'Sim' : 'Não'}');

  List<String> listNomes = ['lucas', 'ana', 'ricacio', 'dora', 'biza',];

/**
 * Lista é uma coleção dinâmica de elementos organizados entre [], e separados virgula.
 *  Lista é uma coleção indexada que permite valores redundantes na lista.
 */
  
 List<String> listDuplicada = listNomes.expand((e) => [e,e]).toList();
 print('');
 print(listDuplicada); // lista aceita valores redundantes.

 // addAll()
 listNumeros.addAll([33,34,35,36,37,38,39]);// Esta coleção List passada como argumento para addAll(), terá todos os seus valores 
 // jogados em listNumeros.
 print('');
 print(listNumeros);
 // limpando toda lista numeros clear();
 listNumeros.clear(); 
 print('');
 print(listNumeros);

// construtor nomeado List.from()

listNumeros = List.from([10,9,8,7,6,5,4,3,2,1]);
listNumeros.shuffle(); // Embaralha os elementos da lista.
print(listNumeros);
listNumeros.sort((a,b) => a.compareTo(b)); // uma lista ordenada em crescente.
print('');
print(listNumeros);
listNumeros.sort((b,a) => a.compareTo(b)); // uma lista em ordem decrescente.
print('');
print(listNumeros);

 print('Os três primeiros valores da lista ${listNumeros.take(3)}');
 print('Pulando os 3 primeiros valores da lista ${listNumeros.skip(3)}');
 print(listNumeros.skip(3).take(3));// pula os 3 primeiros elementos da lista e  depois pega 3 elemento primeiors da nova lista.

 List<String> nomeList = List.filled(10,'ricacio');
 // carregará  nomeList com 10 nome 'ricacio' 
 print('\nlist ${nomeList}');

 // GERANDO LISTAS

 List<double> listaValor = List.generate(10,(index){
      return index * 2;
 });

List<int> aleatorio = List.generate(10,(index){
  return Random().nextInt(10 + 1);
});
 print(listaValor);
 print('');
 aleatorio;
 print(aleatorio);
 aleatorio.sort();
 print(aleatorio);

 List<String> nomes = List.generate(10,(index) => 'ricacio$index');
 print(nomes);

 // ====== função forEach() ======

 nomes.forEach((e){
  print('forEach() $e');
 });

 // ====== expand() ======

 var matriz = [[1,2,3],[4,5,6],[7,8,9]];

 final List<int> num1 = matriz.expand((e) => e).toList();
 /**
  * expand() concatena os elementos da lita, mas também pode expandir
  */
  print('');

  /**
   * Operadores
   * . operador de acesso ponto
   * ..operador em cascata
   * ... operador spread
   */

  var  num2 = [...num1];

   num2..add(22)..insert(0,1500);

   num2.forEach((e) => print('$e'));

   // ====== map() ======
   // gera uma nova coleção do mesmo tamanho da  coleção mapeada.

   var lista = num2.map((e) => 'Valor: ${e.toDouble()}').toList();
   var listNomes2 =  nomes.map((element){
     return 'ricacio';
   });
   print(lista);
   print(listNomes2);
  // ====== every() =======
  // faz um teste lógico em  cada um dos elementos da lista, retornando true ou false.
  // se todos forem true então  every() retorna true. Se apenas um for false então every() retorna false.

   final List<double> salario = [1500,1550,1600,7800,2450];
   var resultado = salario.every((e) => e >= 1500); // return true ou false
   print('Todos os salários são maiores ou  igual a 1500 ? ${resultado ? 'SIM' : 'NÃO'}');
  
  List<double> listaFiltrada = salario.where((e) => e > 1500).toList();
  print('Lista filtrada $listaFiltrada');

  // ====== reduce() ======
  // reduz a coleção a um único valor, do mesmo tipo dos elementos da lista.

  var menor  = listaFiltrada.reduce((anterior,atual){
      return  anterior = (anterior < atual) ? anterior : atual;
  });


  var maior = listaFiltrada.reduce((anterior,atual) => anterior = (anterior > atual) ? anterior : atual);

  var soma =  listaFiltrada.reduce((anterior,atual){ 
     return anterior + atual;
    });

  print('O menor : $menor, O maior : $maior, a soma : $soma ');
  

// ====== fold() ======

 var menorF = listaFiltrada.fold(0.0,(anterior,atual) => (anterior < atual) ? anterior : atual);
 var maiorF = listaFiltrada.fold(0.0,(anterior,atual) => (anterior > atual) ? anterior : atual);
 var somaF = listaFiltrada.fold(0.0,(anterior,atual){
    return anterior + atual;
 });
 print('');
 print('Soma:$somaF, menor:$menorF, maior:$maiorF ');

}

