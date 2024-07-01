void main(){
linkedHashMap();
}


void linkedHashMap(){

  List<String> nome = ['ricacio','ana','dora','carmem'];
  Map<int,dynamic> nomeMap = nome.asMap();
  print('\n $nomeMap');

  Map<String?,dynamic> frutas = new Map(); // linha de instanciamento

  frutas['banana'] = 'amarelo'; // declaramos a chave [banana] e inicializamos a mesma com 'amarelo'
  frutas['banana'] = 'verde' ; // sobreposição de valor da chave [banana]
  frutas['goiaba'] = 'amarelo';
  frutas['maca'] = 'vermelho';
  print('\n $frutas');

  print(frutas.containsKey('banana') ? 'Sim! Ela existe no Map' : 'Não! Ela não existe no map');
  print(frutas.containsValue('azul') ? 'Sim ! O valor existe no map' : 'Não ! O valor não existe no map');
  print(frutas['banana']);
  frutas.clear();
  frutas[null] = null;
  print('$frutas \n');


  Map<String,dynamic> usuario =  new Map.from({'nome':'ricacio','idade':28,'peso':65.5}); // linha de instanciamento via construtor nomeado

  print(usuario);
  usuario..update('nome',(valor) => '$valor Santana',ifAbsent:() => 'indefinido')
  ..update('idade',(valor) => ++valor,ifAbsent: () => 'indefinido')
  ..update('peso',(value) => 70,ifAbsent:() => 'indefinido');
  print(usuario);
  usuario.removeWhere((chave,valor) => chave == 'peso' && valor == 70); // se true então remove
  print('');
  print(usuario);
  usuario.update('peso',(valor) => 70,ifAbsent:() => 'indefinido');
  print('');
  print(usuario);
  usuario.putIfAbsent('altura',() => 1.73); // cria uma chave já com valor inserido
  usuario.addAll({'sexo':'Masculino','casado':true});
  print('');
  print(usuario);
  print('chave:${usuario.keys}, \n valor:${usuario.values}');

  Map<int,String> numero = {0:'zero',1:'um',2:'dois'};
  print(numero);

  print(numero.map((chave,valor) => MapEntry(chave,'${valor.toUpperCase()}')));

  for(var key in numero.keys){
    print('Chave:$key');
  }
  print('');
  
  for(var value in numero.values){
    print(value);
  }
  print('');

  for(var key in numero.keys){
    final valor = numero[key];
    print('chave:$key, valor:$valor');
  }

  


}