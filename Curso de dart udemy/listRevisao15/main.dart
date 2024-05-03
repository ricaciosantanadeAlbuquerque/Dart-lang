import 'dart:math';

void main(List<String> args){
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];

  // mostrando valores com forEach()

numeros.forEach((e) => print('Valores $e'));

print('');

numeros.forEach((element){
  print('Valores: $element');
});

// concatenado elementos com expand()

List<List<int>> matriz = [[1,2,3],[4,5,6],[7,8,9]];

matriz.forEach((e) => print(e));

final novaLista = matriz.expand((e) => e).toList();
print('');
print(novaLista);

// duplicando os elemento de uma lista com expand()


final listaDuplicada = novaLista.expand((e) => [e,e]);// coleção de Iterable duplicado
 print('');
 print(listaDuplicada);
 print('');
        // para lista
final listaDuplicada01 = novaLista.expand((e) => [e,e]).toList();
print(listaDuplicada01);

 // testado uma lista com a função every()

 // quero saber se todos os elementos desta lista são maiores do que 0

 var resultado  =  listaDuplicada01.every((element) => element > 0);
 print('');
 print(resultado); 

 // gerando lista 

 List<double> salariosdoMes = List.generate(10,(inde){
  return Random().nextInt(10000 + 1).toDouble();
 });

 // mostrando valores com forEach()

 print('');

 salariosdoMes.forEach((e) => print(e));

 // teste com a função every(), para saber se todos os elementos da lista Todos eles estão acima de 2500

  var resposta =  salariosdoMes.every((e) => e > 2500);
  print(resposta);

 // Mapeando uma lista de double para uma lista de inteiros

List<int> listInt = salariosdoMes.map((e) => e.toInt()).toList();

print('');
print(listInt);
print('');

// mapeando para uma lista de String 

List<String> listaString =  listInt.map((element) => 'Valor:$element').toList();
print('');
print(listaString);

// filtrando  uma lista salariodoMes 

var listaFiltrada = salariosdoMes.where((element) => element > 5000).toList();
print('Lista filtrada');

print(listaFiltrada);

print('');
// filtrando  a listaString

 var result = listaString.lastWhere((element) => element.contains('V'), orElse: () => 'ERRO!');

print(result);



// reduzindo a lista a um único valor com reduce()

List<int>  valorNumerico = [1,2,3,4,5,6,7,8,9,10];
 var valorAcumulado = valorNumerico.reduce((anterior,atual) => anterior + atual);
 print('');
 print(valorAcumulado);

 final List<bool> verdade = [true,false,!true,!false,];

 var test1 = verdade.reduce((anterior,atual) => anterior  && false);
 print(test1);
 var menor = valorNumerico.reduce((anterior,atual) => ( anterior > atual) ? atual : anterior);
 var maior = valorNumerico.reduce((anterior,atual) => (anterior > atual) ? anterior : atual);

 print('');
 print('Menor:$menor, maior:$maior');

 // reduzindo uma lista com fold()

 List<int> numericos =  List.generate(10,(index){
  return Random().nextInt(100);
 });

  print(numericos);
  // acumulando com fold()
  print('');
  var num1 = numericos.fold(0,(anterior,atual) => anterior + atual);

  print(num1);

 final List<double> vetor = [1500.00,1500,00,3000,4000];
 print('Resultado: ${vetor.fold(0.0,(anterior,atual) => anterior + atual)}');
}


