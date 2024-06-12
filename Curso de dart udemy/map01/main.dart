void main() => linkedHashMap();

linkedHashMap(){
  List<String> listNome = ['ricacio','lucas','Ana'];
  Map<int,String> listMapNome = listNome.asMap();
  print(listMapNome);
  listMapNome.forEach((chave,value) => print('Chave:$chave, valor>$value'));

  Map<String?,dynamic> mapFrutas = Map();
  mapFrutas['banana'] = 'Amarelo';
  mapFrutas['banana'] = 'verde'; // sobreposição de valor da chave que deixa de ser amarela para ser verde
  mapFrutas['goiaba'] = 'amarela';
  mapFrutas['maca'] = 'vermelhor';
  print(mapFrutas.containsKey('banana')); // true
  print(mapFrutas.containsValue('azul')); // false
  mapFrutas.clear(); // limpar o map

  mapFrutas[null] = null;
  print(mapFrutas);

  Map<String,dynamic> usuario = Map.from({'nome':'ricacio','idade':28,'peso':65.5});
  print(usuario);

  usuario.update('nome',(valor) => '$valor santana', ifAbsent: () => 'indefinido');
  usuario.update('idade',(value) => ++value, ifAbsent: () => 'indefinido');
  usuario.update('peso',(valor) => 70, ifAbsent: () => 'indefinido');
  print(usuario);
  usuario.removeWhere((key,value) =>  key == 'peso' && value == 70); // então remove
  print('');
  print(usuario);
  usuario.update('peso',(value) => 70,ifAbsent:() => 'indefinido'); // se a chave peso com seu valor não existe, então peso será criada
  // com o valor de retorno de ifAbsent.
  usuario.forEach((key,value) => print('Chave:$key, Value:$value'));
  usuario.putIfAbsent('Altura',() => 1.73); // criamos uma chave [altura] com o valor de 1.73, e guardamos isso no map usuario
  print('');
  print(usuario);
 usuario.addAll({'Sexo':'Masculino','casado':true});
 print('');
 print(usuario);
 usuario.forEach((chave,valor){
    print('Chave:$chave, Valor:$valor');
 });
 
 print('');
 print('');
 print('chave: ${usuario.keys}');
 print('Valor: ${usuario.values}');

print('');

 Map<int,String> numeros = {0:'zero',1:'um',2:'dois'};
 numeros.putIfAbsent(3,() => 'três');
 numeros.putIfAbsent(4,() => 'quatro');
print(numeros);

var novoMap = numeros.map((chave,valor) => MapEntry(chave,'${valor.toUpperCase()}'));
print(novoMap);

for(var key in novoMap.keys){
   print(key);
}
print('');

for(var value in novoMap.values){
  print(value);
}

 print('');
 for(var map in novoMap.entries){
    print('chave:${map.key}, valor:${map.value}');
 }
}