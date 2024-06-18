void main(){
  mapMap();
}



void mapMap(){
  List<String> nome = ['ricacio','lucas','Ana'];
  Map<int,String> mapNome = nome.asMap(); // converte para map uma lista
  print('\n$mapNome');
  mapNome.forEach((chave,valor) => print('Chave:$chave, valor:$valor'));


  Map<String?,dynamic> frutas = Map();
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde'; // sobreposição de valor da chave banana
  frutas['goiaba'] = 'amarela';
  frutas['maca'] =  'vermelha';
  print('/n$frutas');
  print(frutas.containsKey('banana')); // contaisKey() faz uma busca no map() e retorna true caso encontre o valor ou false caso não encontre
  print(frutas.containsValue('azul'));
  print(frutas['banana']); // para obter o valor de um map() basta referênciar a chave
  frutas.clear(); // limpar o map()
 frutas[null] = null;
 print('\n$frutas');

 Map<String,dynamic> usuario = Map.from({'nome':'ricacio','idade':30,'peso':65});
 // atualizando map() com a função update()
 usuario.update('nome',(valor) => '$valor santan',ifAbsent:() => 'indefinido');
 usuario.update('idade',(valor) => ++valor,ifAbsent: () => 'indefinido');
 usuario.update('peso',(valor) => 70,ifAbsent: () => 'indefinido');
 print('');
 print(usuario);
 print('');
 usuario.removeWhere((chave,valor) => chave == 'peso' && valor == 70); // então remove
 /**
  *  como a chave peso não existe então  ela será criada pela função update() e o retorno de ifAbsent será alocado nela.
  */
 usuario.update('peso',(valor) => 70,ifAbsent:() => 'indefinido');
 // criando chave com  valor utilizando putIfAbsent()
 usuario.putIfAbsent('altura',() => 1.73);
 print(usuario);
 usuario.addAll({'sexo':'Masculinos','casado':true});
 print('');
 print(usuario);
 print('chave:${usuario.keys}, valor:${usuario.values}');

 Map<int,String> numero = {0:'zero',1:'um',2:'dois'};
 print(numero);
 print(numero.map((chave,valor) => MapEntry(chave,'${valor.toUpperCase()}')));

 for(var key in numero.keys){
   print('chave $key');
 }

  for(var value in numero.values){
    print(value);
  }

  for(var key in numero.keys){
    final valor = numero[key];
    print('chave:$key, valor:$valor');
  }
 }