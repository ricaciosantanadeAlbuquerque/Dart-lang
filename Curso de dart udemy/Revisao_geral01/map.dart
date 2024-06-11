void main(List<String> args){
  Map usuario = {'nome':'lucas','idade':29,'dev':true};
  print(usuario.runtimeType);
  print(usuario);
  usuario['idade'] = 25; // para ver o valor  no Map ou sobrepor  um valor, devemos referênciar a chave 
  /**
   * Map é uma coleção dinâmica entre  chaves {} também conhecida como coleção chave valor 
   *  */ 
   print(usuario);

   Map<int,String> mapNome = {1:'ricacio',2:'Lucas',3:'kelvi'};

   for(var element in mapNome.values){
      print(element);
   }

   Map<int,Map<String,List<int>>> mapValor = {
    0:{'texto':[1,2,3]},
    1:{'texto':[4,5,6]},
    2:{'texto':[7,8,9]},
   };

  for(var i in mapValor.values){
     for(var j in i.values){
       for(var l in j){
         print(l);
       }
     }
  }
  print('--------------------------------------------------------\n');
  for(var i = 0; i < mapValor.length;i++){
    var map = mapValor[i];
    for(var j = 0; j < map!.length;j++){
      var lista = map['texto'];
      for(var l = 0; l < lista!.length;l++){
         print(lista[l]);
      }

    }
  }

}