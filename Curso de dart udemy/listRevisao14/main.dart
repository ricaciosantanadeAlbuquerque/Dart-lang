import 'dart:math';

void main(){
  List<int> listaGerada = List.generate(10,(index){
    return Random().nextInt(9999);
  });

  print(listaGerada);

  print('');
  
  // Mostrando todos os elementos da lista.
  listaGerada.forEach((element) =>  print(element));

  List<List<int>> matriz = [[1,2,3],[4,5,6],[7,8,9]];

  
  // Mostrando todos os elementos da lista com forEach()

  matriz.forEach((element) =>  print(element));

  // concatenando com expand()

  var listaConcateada = matriz.expand((e) => e).toList();// expand() concatena os elementos de uma lista gerando uma nova lista 

  print(listaConcateada);

 //duplicando  os elementos de uma lista  com expand()

 //final listaDuplicada =  matriz.expand((e) => [e,e]).toList();
 final listaDuplicada =  listaConcateada.expand((e) => [e,e]).toList();
  
  listaDuplicada.forEach((e) => print(e));

 print('');
 print(listaDuplicada);

 print('');

 // mapeando a lista de int para double

 var listDouble = listaDuplicada.map((e) => e.toDouble()).toList();
 print('');
 print(listDouble);

  // mapeando a lista de int para String com duas casas decimais e  o R$

  var listaValor = listDouble.map((e) => '${e.toStringAsFixed(2)}').toList();
  print('');

  print(listaValor);

  // mapeando de String para double novamente P!  listDouble será sobreposta

  listDouble = listaValor.map((e) => double.parse(e)).toList();

  print('');
  print(listDouble);

  // testando a listaDouble para saber se ele só possui valores acima de 0. use a função every()

  var resposta = listDouble.every((e) => e > 0);

  print(resposta ? 'Sim Todos os elementos da lista são maiores que 0' : 'Não! não são');


  List<int> salario = List.generate(10,(index){
    return  (index * Random().nextInt(10000) + 1);
  });
 print('');
 print(salario);

 // testando para saber  se todos são positivos maiores que 0

 if(salario.every((e) => e > 0 )){
  print('Sim todo são positivos e maiores do que ZERO');
 }else{
  print('Existe valores negativos ou iguais a ZERO!!');
 }

 // filtrando os salários  maiores do que 30 mail.

 var salarioFiltrado = salario.where((eelement) => eelement  > 30000).toList();
 print(salarioFiltrado);

 // filtrando pelo tipo
 print('');
 print(salario.whereType<int>());  // retorna uma coleção de Iterable

// reduzindo a lista a um valor  de mesmo tipo  use o reduce()

var soma  =  salarioFiltrado.reduce((anterior,atual) => anterior + atual);

print('');
print('Valor da soma $soma');

List<num> listNumero = [1,2,3,4,5,6,7,8,9,10];

soma = listNumero.reduce((anterior,atual) => anterior + atual).toInt();
print(soma);

// reduzindo a lista a um valor  de mesmo tipo  use o fold()

var foldSoma = listNumero.fold(0.0,(anterior,atual) => anterior + atual).toInt();

print(foldSoma);
 print('Correção');

}