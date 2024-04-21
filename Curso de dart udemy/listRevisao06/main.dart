import 'dart:math';

void main(List<String> args){

List<int> numerosPares = List.generate(6,(index) => index * 2);
print(numerosPares);
int valorInicial = 10;

// soma total pela função fold()

int result = numerosPares.fold(valorInicial,(anterior,atual){
  print('$anterior, $atual');
 return anterior + atual;
});
print(result);
print('');

// sobrepondo valores

 valorInicial = 30; // new value

 result = numerosPares.fold(valorInicial,(anterior,atual){
  print('$anterior $atual');
  return anterior - atual;
 });
 print('');
 print(result);

 // gerando uma lista

 List<double> listaGerada = List.generate(10,(index){
  return double.parse(( Random().nextDouble() + 1).toStringAsFixed(2));
 });
 print('');
 print(listaGerada);

 // acumulando o valor com fold()

 double somaValor = listaGerada.fold(0,(anterior,atual) => anterior + atual);
 print(somaValor.truncate()); 
 // ou 
 print(somaValor.toStringAsFixed(2));
}