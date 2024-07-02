void main(){
mapTest();
print('');
linkedHashMap();
}

/**
 * Map()
 * asMap() converte list map
 * Map.from()
 * {}
 * Essas são algumas formas de se declarar um map 
 */

void mapTest(){
  List<Map<String,dynamic>> carrinho = [
    {'nome':'Borrach','preco':3.45},
    {'nome':'Caderno','preco':13.9},
    {'nome':'KitLapis','preco':41.22},
    {'nome':'Caneta','preco':7.5}
  ];

   dynamic Function(dynamic) porcentagem(desconto) => (valor) => desconto * valor['preco'];
   final moeda = (element) => 'RS ${element.toDouble().toStringAsFixed(2).replaceFirst('.',',')}';

   var preco01 = carrinho.map(porcentagem(0.9)).map(moeda).toList();
   var preco02 = carrinho.map((map) => map.update('preco',(valor) => 0.9 * valor)).map(moeda).toList(); // houve uma atualização do valor dos preços com update()
   var mediaPreco = (carrinho.map((map) => map['preco']).reduce((ant,atu) => ant + atu) / carrinho.length).toStringAsFixed(2);

   print(preco01);
   print('');
   print(preco02);
   print('');
   print(mediaPreco);

   List<Map<String,Object>> escolaTurmas = [
    {'nome':'Turma T1',
     'alunos':[
      {'nome':'ricacio','nota':7},
      {'nome':'lucas','nota':8},
     ]
     },
    {
      'nome':'Turma T2',
      'alunos':[
        {'nome':'Matheus','nota':9},
        {'nome':'Nielson','nota':10},
      ]
    },
   ];

   var listaAlunos = escolaTurmas.map((map) => map['alunos'] ).expand((element) => element as Iterable).toList();
   print(listaAlunos);
   listaAlunos.sort((b,a) => a['nota'].compareTo(b['nota']));
   print(listaAlunos);
   var mediaNotas = listaAlunos.map((map) => map['nota']).fold(0,(ant,atu) => (ant + atu) as int) / listaAlunos.length;
   print(mediaNotas);
}

void linkedHashMap(){
  List<String> listNomes = ['ricacio','lucas','dora','vó','carmem'];
  Map<int,String> listMapNomes = listNomes.asMap(); // convertendo uma lista em Map()
  print('\n $listMapNomes');
  listMapNomes.forEach((key,value) => print('Chave:$key, valor:$value'));

  Map<String?,dynamic> frutas = Map(); // linha de instanciamento
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde'; // sobreposição de valor da chave banana
  frutas['goiaba'] = 'amarela';
  frutas['maca'] = 'vermelho';

  print(frutas);

  print(frutas.containsKey('banana')); // true
  print(frutas.containsValue('azul'));// false
  print(frutas['banana']);
  frutas.clear(); // limpa todo o Map()
  frutas[null] = null;
  print(frutas);
  print('');

  Map<String,dynamic> usuario = Map.from({'nome':'ricacio','idade':30,'peso':65});
  usuario.update('nome',(valor) => '$valor Santana',ifAbsent:() => 'indefinido');
  usuario.update('idade',(valor) => ++valor,ifAbsent: () => 'indefinido');
  usuario.update('peso',(valor) => 70,ifAbsent:() => 'indefinido');
  usuario.removeWhere((chave,valor) => chave == 'peso' && valor == 70);
    print(usuario);
  usuario.update('peso',(valor) => 70,ifAbsent:() => 'indefinido');
    print(usuario);
  usuario.putIfAbsent('altura',() => 1.73);
  usuario.addAll({'sexo':'Masculino','casado':true});
  print(usuario);
  print('chaves:${usuario.keys} \n valor?${usuario.values}');

  Map<int,String> numero = {0:'zero',1:'um',2:'dois',3:'tres'};
  print(numero.map((chave,valor) => MapEntry(chave,'${valor.toUpperCase()}')));
  for(var key in numero.keys){
    print('chave:$key');
  }

  print('');

  for(var value in numero.values){
    print(value);
  }

  print('');

  for(var key in numero.keys){
    final valor = numero[key];
    print('chave:$key, valor$valor');
  }
  






  
}

