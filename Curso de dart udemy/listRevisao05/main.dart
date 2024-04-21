import 'dart:math';

void main(){
  List<int> numerosPares = List.generate(6,(index){
    return index * 2;
  });

  numerosPares.forEach((e) => print(e));

  int valorTotal = numerosPares.reduce((anterior,atual){return anterior + atual;});

  print(valorTotal);

  // lista Lógica
  List<bool> boleanas = [true,false,!true,!false];
  bool and = boleanas.reduce((anterior,atual) => anterior && atual);
  bool or  = boleanas.reduce((anterior,atual) => anterior || atual);

  print('anda: $and, or: $or\n');
  
  // idade List<int>

  List<int> idade = [36,12,18,31,17,23];

  int menorIdade = idade.reduce((anterior,atual){
    print('anterior:$anterior, atual:$atual');
    return (anterior > atual) ? atual : anterior;
    });
  int maiorIdade = idade.reduce((anterior,atual) => (anterior > atual) ? anterior : atual);
  int media = idade.reduce((anterior,atual) => anterior + atual);
  print('Maior idade :$maiorIdade, menor idade:$menorIdade media das idade ${(media / idade.length).toStringAsFixed(2)}');

// construtor nomeado List.generate()
 List<int> valores  = List.generate(10, (index) =>  (Random().nextInt(100 + 1)));
 print(valores);
 print('');
 // exibir valores pela função forEach()
 valores.forEach((e) => print(e));

 print('');

 // filtrando lista com where()

 final listaFiltrada = valores.where((e) => e > 10).toList();
 listaFiltrada.forEach((e) => print( e));
 
// testando para ver se todos estão acima de 10 com a função every()

 print(listaFiltrada.every((e) => e > 10) ? 'Sim todos os elementos da lista são maiores que 10' : 'Nao !!!');

// acumulando valor com reduce()

 int result = listaFiltrada.reduce((anterior,atual) => anterior + atual);

 print('Listas de valores:${listaFiltrada}, soma dos valores:$result');

}