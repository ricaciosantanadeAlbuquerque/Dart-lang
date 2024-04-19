import 'dart:math';

void main(List<String> args){
List<num> numero = [0,2.5,7.25,10];
/// Recebe uma função com parametro e sem retorno, e não retorna nada. 
numero.forEach((element) => print(element));

List<int> inteiro = [1,5,10];
List<double> doubles = [2.5,7.25];
List<bool> boleanas = [true,false,!true,!false];
List<String> frutas = ['Morango','Banana','Tomate'];
 
 print('Tipo: ${frutas.runtimeType}\n');// o tipo da lista
 print('boleanas[3]: ${boleanas[inteiro.length] ? 'Verdadeiro' : 'falso'}\n');

 frutas.insert(0,'Abacaxi');
 frutas.add('Laranja');

 print('\n');

 // mostrando a lista forEach()

 frutas.forEach((element) => print(element));
 // Através do parametro da função anonima podemos enxergar cada elemento da lista.

 frutas.removeLast(); // remove o ultimo elemento da lista
 frutas.removeWhere((element) => element ==  'Banana'); // se true então remova
 print('');
 print(frutas);
 print('');
 print((frutas).elementAt(2));
 print(frutas.contains('Morango') ? 'Sim contem ' : 'Não contem');

 // construtores nomeados
List<num> numeros = List.from(inteiro)..addAll(doubles)..shuffle()..sort();

print('');
print(frutas);


List<dynamic> lista = [];
lista = numeros.take(3).skip(1).toList();  // vamos pegar os 3 primeiros elementos da lista e  pular o 1 (sikip)
print(lista);

// lista preenchida

List<String> listaPreenchida = List.filled(2,'elemento');
print('');
print(listaPreenchida);

// lista gerada 

List<String> listaGerada = List.generate(2,(index) => 'nome ${index}');

List<double> listaPreco = List.generate(5,(index) => double.parse(((index + 1) * Random().nextDouble()).toStringAsFixed(2)));

print(listaGerada);

print('ListaPreenchida: $listaPreenchida,\n ListaGerada:$listaGerada,\n listaPreço:$listaPreco');


listaPreco.forEach((element){
  print('${element}');
});





















 }