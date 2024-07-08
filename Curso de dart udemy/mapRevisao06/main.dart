void main(){
  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
}


void linkedHashMap(){
  List<String> listNomes = ['ricacio','lucas','Ana'];
  Map<int,String> listNomesMap = listNomes.asMap(); // convertendo uma litsa [] em map {}
  print('\n $listNomesMap'); 
  listNomesMap.forEach((chave,valo) => print('Chave: $chave, valor:$valo'));

  Map<String?,dynamic> frutas = new Map();
  frutas['banana'] = 'Amarelo';
  frutas['banana'] = 'Verde'; // sobreposição
  frutas['goiaba'] = 'amarelo';
  frutas['maca'] = 'Vermelho';

  print('\n $frutas');
  print(frutas.containsKey('banana')); // faz uma varredura no map() procurando a chave passada como argumento, caso encontre, retorna true
  print(frutas.containsValue('azul')); // faz uma varredura no map() procurando o valor passado como argumento,caso encontre,retorna true
  print(frutas['banana']); // revela o valor da chave banana
  frutas.clear(); // limpa todo o map()
  frutas[null] = null;
  print('$frutas \n');

  Map<String,dynamic> usuario = new Map.from({'nome':'ricacio','idade':30,'peso':65});
  usuario.update('nome',(value) => '$value Santana', ifAbsent: () => 'indefinido' );
  usuario.update('idade',(value) => ++value,ifAbsent:() => 'indefinido');
  usuario.update('peso',(value) => 70,ifAbsent:() => 'indefinido');
  usuario.removeWhere((key,value) => key == 'peso' && value == 70); // se true então remove
  usuario.update('peso',(value) => 70, ifAbsent:() => 'indefinido');
  usuario.putIfAbsent('altura',() => 1.73);
  usuario.addAll({'sexo':'Masculino','casado':false});
  print('$usuario');

print('');
print('Chaves:${usuario.keys} \n valor:${usuario.values}');

 Map<int,dynamic> numeros = {0:'zero',1:'um',2:'dois',3:'tres'};

 print(numeros.map((key,value) => MapEntry(key,'${value.toUpperCase()}')));
 
 for(var chave in numeros.keys){
  print('Chave:$chave');
 }

 for(var valor in numeros.values){
  print('Valor:$valor');
 }

 for(var key in numeros.keys){
  final valor = numeros[key];
  print('chave:$key, valor:$valor');
  
 }


}

void mapMap() {

  List<Map<String,dynamic>> carrinho = [
    {'nome':'Borracha','preco':3.45},
    {'nome':'Caderno','preco':13.9},
    {'nome':'KitLapis','preco':41.22},
    {'nome':'Caneta','preco':7.5},
  ];

  dynamic Function(dynamic) porcentagem(dynamic desconto) => (map) => desconto * map['preco'];
  final String Function(dynamic) moeda = (element) => 'RS ${element.toDouble().toStringAsFixed(2).replaceFirst('.',',')}';

  List<String> listPreco01 = carrinho.map(porcentagem(0.9)).map(moeda).toList();
  var  listPreco02 = carrinho.map((map) => map.update('preco',(value) => 0.9 * value)).map(moeda).toList();
  var precoMedio = (carrinho.map((map) => map['preco']).reduce((ant,atu) => ant + atu) / carrinho.length).toStringAsFixed(2);
  print('Lista preçoo 1 : $listPreco01\nLista preço 2 $listPreco02\n preço Médio $precoMedio' );
  
  List<Map<String,Object>> escola = [
    {'nome':'Turma 1',
     'alunos':[
      {'nome':'ricacio','nota':7},
      {'nome':'lucas','nota':8}
     ],
     },

     {'nome':'Turma 2',
      'alunos':[
        {'nome':'Ana','nota':9},
        {'nome':'Carmem','nota':10},
      ],
     }
  ];

  var listAlunos = escola.map((map) => map['alunos']).expand((e) => e as Iterable).toList();
  print('Lista de alunos $listAlunos');
  listAlunos.sort((b,a) => a['nota'].compareTo(b['nota']));
  print('Litas de Alunos ordenada $listAlunos');
  double mediaNotas =  listAlunos.map((map) => map['nota']).reduce((ant,atu) => ant + atu) / listAlunos.length;
  print('Média das notas $mediaNotas');
  listAlunos.forEach((map) => print('Nome:${map['nome']}, nota:${map['nota']}'));
}

void everyMap(){
 List<Map<String,dynamic>> pessoas = [
  {'nome':'ricacio','idade':30},
  {'nome':'lucas','idade':28},
  {'nome':'dora','idade':56},
 ];

 print(pessoas.every((map) => map.containsKey('nome')));// containsKey() faz uma varredura no map() buscando a chave passada como argumento. se encontrar retorna true
 print(pessoas.every((map) => map['idade'] >= 18));
 var result = pessoas.every((map) => map['nome'].startsWith('l'));
 print(result);

 List<Map<String,dynamic>> salario = [
  {'nome':'ricacio','salario':1670},
  {'nome':'lucas','salario':2300},
  {'nome':'Ana','salario':5000},
  {'nome':'Carmem','salario':3000},
 ];

 var resposta = salario.every((map) => map['salario'] > 1500);
 print(resposta ? 'Todos ganha acima de 1500' : 'Nem todos ganham acima de 1500');
}


void whereMap(){
 List<Map<String,dynamic>> pessoas = [
  {'nome':'ricacio','idade':30,'salario':1670},
  {'nome':'lucas','idade':28,'salario':2300},
  {'nome':'Ana','idade':35,'salario':6500},
  {'nome':'Kalvin','idade':17,'salario':0}
 ];
 // filtrando pela idade
 var deMaior = pessoas.where((map) => map['idade'] >= 18).toList();
 print(deMaior);

// filtrando pelo salario
var salario = pessoas.where((map) => map['salario'] > 1500);
print(salario);

// menor idade

var menor = pessoas.singleWhere((map) => map['idade'] < 18);
print(menor);

// media idades

var mediaIdade = pessoas.map((map) => map['idade']).reduce((ant,atu) => ant + atu) / pessoas.length;
print(mediaIdade);

// media dos salario

var mediaSalario = pessoas.map((map) => map['salario']).reduce((ant,atu)=> ant + atu) / pessoas.length;
print(mediaSalario);

}

/**
 * Formas de declarar um map()
 * new Map()
 * new Map.from()
 * asMap()
 * {}
 */