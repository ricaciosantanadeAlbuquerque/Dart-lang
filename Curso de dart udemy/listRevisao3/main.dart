import 'dart:math';

void main(List<String> args){
  List<double> itemPreco = [100,150,250,300,120,550];
  // Vamos testar  se essa lista de compras só tem valores acima de 100. use a função every()
  print(itemPreco.every((element) => element >= 100) ? 'Sim ! esta lista de compras só tem valores acima de 100' : 'Não esta lista contem valores a baixo de 100');

  List<String> nomes = ['Ana','Lucas','dora','ricacio'];
  bool resultado = nomes.every((e) =>  e.contains('a'));
  print(resultado);

  List<int> valores = [];

for(var i = 0; i < 10;i++){
  valores.add(Random().nextInt(10));
}
print(valores);
print('Os valores da lista  são acima de ZERO ? ${valores.every((element) => element > 0) ? 'Sim ' : 'Não '}');
}