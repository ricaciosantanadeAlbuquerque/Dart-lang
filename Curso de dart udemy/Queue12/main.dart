import 'dart:collection';
import 'dart:io';

void main(){
  ListQueue<int> numeros = ListQueue();

  for(var j  = 0; j < 10; j++){
    print('Digite um número');
    String? entradaNumero = stdin.readLineSync();
    int num1 = int.parse(entradaNumero!);
    numeros.add(num1);
  }
  
  print(numeros);
  var menor = numeros.reduce((anterior,atual) => (anterior < atual) ? anterior: atual);
  var maior = numeros.reduce((anterior,atual) => (anterior > atual ) ? anterior : atual);
  var soma  =  numeros.fold(0.0,(anterior,atual) => anterior + atual);

  print('O menor valor ${menor}, maior valor ${maior}, O somatório ${soma}');
  
}