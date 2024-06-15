
import 'dart:math';

void main() => linkedHashMap();

void linkedHashMap(){
  List<String> nome = ['Ana','lucas','ricacio'];
  Map<int,String> mapNome = nome.asMap();
  print(mapNome);

  print('');

  mapNome.forEach((chave,valor) => print('Chave:$chave, valor:$valor'));

  Map<String?,dynamic> frutas = Map();

  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde';
  frutas['goiaba'] = 'goiaba';
  frutas['maca'] = 'vermelho';
  print('');
  print(frutas);
  frutas.clear();
  frutas[null] = null;

  Map<String,dynamic> usuario = Map.from({'nome':'ricacio','idade':30,'peso':65.5});
  usuario.update('nome',(valor) => '$valor Santana',ifAbsent:() => 'indefinido');
  usuario.update('idade',(valor) => ++valor,ifAbsent:() => 'indefinido');
  usuario.update('peso',(valor) => 70,ifAbsent:() => 'indefinido');
  print('');
  print(usuario);
  usuario.removeWhere((chave,valor) => chave == 'peso' && valor == 70);
  print('');
  print(usuario);
  print('chaves:${usuario.keys}\n valor:${usuario.values}');
  usuario.update('peso',(valor) => 70,ifAbsent:() => 'indefinido');
  usuario.putIfAbsent('altura',() => 1.73);
  usuario.addAll({'sexo':'masculino','casado':false});
  print('');
  print(usuario);

  Map<int,String> numeros = {0:'zero',1:'um',2:'dois'};
  print(numeros);
  print(numeros.map((chave,valor)=> MapEntry(chave,'${valor.toUpperCase()}')));

  for(var key in numeros.keys){
    print(key);
  }

  for(var value in numeros.values){
     print(value);
  }
 
 for(var item in numeros.entries){
    print('chave:$item,');
 }

 print('chave:${numeros.keys}\n valor:${numeros.values}');

 Map<int,dynamic> valores = Map();

 for(var i  =0; i < 10 ; i++){
   valores[i] = Random().nextDouble();
 }
  print(valores);

 var mapValores = valores.map((chave,valor) => MapEntry(chave, '${(valor * 9).truncate()}'));
 print(mapValores);
 mapValores.removeWhere((chave,valor) => (int.parse(valor)) < 5);
 print(mapValores);
}