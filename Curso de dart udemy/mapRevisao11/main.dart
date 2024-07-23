import 'carro.dart';

void main() {
  linkedHashMap();
  print('');
  mapMap();
  print('');
  everyMap();
  print('');
  whereMap();
  mapReduce();
  mapObject();
}

void linkedHashMap() {
  List<String> listNomes = ['Lucas', 'ricacio', 'Ana'];
  print(listNomes);
  Map<int, String> listNomesMap = listNomes.asMap(); // asMap() converte uma lista em Map()
  print('$listNomesMap\n ');
  listNomesMap.forEach((int key, String value) {
    print('Chave:$key, valor:$value');
  });
/**
 * A função asMap() converte uma tipo List() em Map(). 
 * Os index viram chave [key] e os valores dos index viram os valores das chave ou key
 * 
 * MANEIRAS DE DECLARAR UM MAP()
 * asMap()
 * Map()
 * Map.from()
 * {}
 */

  /// temos o Map() frutas,  porém não temos as chaves nem os valores. É necessário declarar as chaves, e inicializa-las com os valores.
  Map<String?, dynamic> frutas = Map();
  frutas['banana'] = 'amarelo';
  frutas['banana'] = 'verde'; // sobrepondo o valor da chave.
  frutas['goiaba'] = 'amarelo';
  frutas['maca'] = 'vermelho'; // declarando a chave [maca] e inicializando com o valor = vermelho.
  print('\n $frutas');

  /// contaisKey() procura uma chave de acordo com o valor passado retornando true ou false,  faz uma busca no Map().
  print(frutas.containsKey('banana'));
  print('A chave banana existe no map frutas ? ${frutas.containsKey('banana') ? 'SIM' : 'nÃO !!'}');

  /// constainsValue() faz uma busca no Map() procurando o valor passado como argumento e se achar retorna true. Se não achar retorna false.
  print(frutas.containsValue('azul'));
  print('o Valor vermelho existe no Map frutas ${frutas.containsValue('vermelho') ? 'Sim !!!' : 'Não !!!'}');
// a função clear() limpa op Map();
  frutas.clear();
// declarando uma chave como null e inicializando com null.
  frutas[null] = null;
  print('frutas\n'); // \n nova linha

  /// construtor nomeado e privado.
  Map<String, dynamic> usuario = Map.from({'nome': 'ricacio', 'idade': 30, 'peso': 65.5});
  usuario.update('nome', (value) => '$value Santana', ifAbsent: () => 'indefinido');
  usuario.update('idade', (value) => ++value, ifAbsent: () => 'indefinido'); // pré-incremento. ++value
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido');
// removendo a chave peso
  print(usuario);
  usuario.removeWhere((key, value) => key == 'peso' && value == 70); // se true então remove
  print(usuario);
// adicionando o peso via função update() com parâmetro nomeado ifAbsent:
  usuario.update('peso', (value) => 72, ifAbsent: () => 'indefinido');
  print(usuario);
// adicionando uma chave com valor via função putIfabsent()
  usuario.putIfAbsent('altura', () => 1.72);
  usuario.addAll({'sexo': 'Masculino', 'casado': false});
  print('\n$usuario\n');

  Map<int, String> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);

  /// Mapeando um Map() para outro Map() usando MapEntry()

  Map<int, String> novoMapNumero = numeros.map((key, value) => MapEntry(key, '${value.toUpperCase()}'));
  print(novoMapNumero);

  for (var chave in novoMapNumero.keys) {
    print('chave: $chave');
  }
  print('');
  for (var value in novoMapNumero.values) {
    print('Valor $value');
  }
  print('');
  for (var i = 0; i < novoMapNumero.length; i++) {
    final valor = novoMapNumero[i];
    print('chave:$i, valor ${valor}');
  }
  print('');
  for (var entries in numeros.entries) {
    print('chave:${entries.key}, valor:${entries.value}');
  }
}
// ----------------------------map()------------------------------------------
void mapMap() {
  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.9},
    {'nome': 'KitLapis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.5}
  ];

  dynamic Function(dynamic) porcentagem(desconto) => (map) => desconto * map['preco'];
  final nome = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  List<String> precos1 = carrinho.map(porcentagem(0.9)).map(nome).toList();
  print(precos1);

  var precos2 = carrinho.map((map) => map.update('preco',(value) => 0.9 * value)).map(nome).toList();
  print(precos2);
  var precoMedio = carrinho.map((map) => map['preco']).reduce((ant,atu) => ant + atu) / carrinho.length;
  print('Preco 1: $precos1\n Preco 2: $precos2\n Média de preço: ${precoMedio}\n');

List<Map<String,Object>> escola = [
  {'nome':'Turma 1',
   'alunos':[
    {'nome':'ricacio','nota':10},
    {'nome':'lucas','nota':9.5},
   ],
   },
  {'nome':'Turma 2',
  'alunos':[
    {'nome':'Carmem','nota':8.5},
    {'nome':'Ana','nota':9.9},
  ],
  }
];

 var listAlunos =  escola.map((map) => map['alunos']).expand((map) => map as Iterable).toList();
 print(listAlunos);
 print('');
 listAlunos.sort((a,b) => a['nota'].compareTo(b['nota']));
 print('');
 print(listAlunos);
 var mediaNotas = listAlunos.map((map) => map['nota']).reduce((ant,atu) =>  ant + atu ) / listAlunos.length;
 print(mediaNotas.truncate());

 Map<String,dynamic> salario = Map.from({'salario':1500,'idade':30,'peso':65});
 var novoSalario = salario.map((key,value) => MapEntry(key,value + 150));
 print('');
 print(novoSalario);

 }

void everyMap(){
 List<Map<String,dynamic>> pessoas = [
  {'nome':'ricacio','idade':30},
  {'nome':'lucas','idade':28},
  {'nome':'ana','idade':43},
  {'nome':'Marcos','idade': 17},
 ];

 print(pessoas.every((map) => map.containsKey('nome')));
 print('Todos são maiores de 18 anos ? ${pessoas.every((map) => map['idade'] >= 18) ? 'Sim !!!' : 'Não !!!'}');

 Iterable<Map<String, dynamic>> result = pessoas.where((map) => map['idade'] > 18);
 print(result);

 print(result.every((map) => map['idade'] >= 18));

 /**
  * every() é uma função que faz testes lógicos em todos os elementos da lista  utilizando o operador && .Se todos forem true
  * então every() retorna true. Aprovando a lista 
  */
 List<Map<String,dynamic>> salario = [
  {'nome':'ricacio','salario':1670},
  {'nome':'lucas','salario':1870},
  {'nome':'ana','salario':2500},
  {'nome':'carmem','salario':1770},
 ];

  // testando se todos possuem  o salário acima de 1800
   print(salario.every((map) => map['salario'] > 1800));
  // filtrando os salários maiores que 1700
  Iterable<Map<String, dynamic>> resultado = salario.where((map) => map['salario'] > 1700);
  print(resultado);
  print(resultado.runtimeType); 
  print('Todos ganham acima de 1700 ? ${resultado.every((map) => map['salario'] > 1700) ? 'SIM!!!': 'Não!!!'}');
  // não se pode aplicar a função every() a um tipo Map()

}

void whereMap(){

 List<Map<dynamic,dynamic>> produto = [
  {'nome':'Notebook','preco':2500,'fragil':true},
  {'nome':'iPad','preco':4200,'fragil':true},
  {'nome':'iPhone','preco':2300,'fragil':true},
  {'nome':'Magic Mause','preco':300,'fragil':false},
 ];

 // lista dos produtos frágeis
 final fragil = (map) => map['fragil'] == true;
 final nome = (map) => map['nome'];
 var produtosFrageis = produto.where(fragil).map(nome);
 print(produtosFrageis);

 List<Map<String,dynamic>> pessoa = [
  {'nome':'ricacio','idade':30},
  {'nome':'Lucas','idade':28},
  {'nome':'Kaio','idade':17},
  {'nome':'Carmem','idade':45},
 ];

 // lista dos maiores de idade.

 final idades = (map) => map['idade'];
 final soma =  (ant,atu) => ant + atu;
 Iterable<Map<String, dynamic>> maioresIdade = pessoa.where((map) => map['idade'] > 17);
 print(maioresIdade);
 Map<String, dynamic> comecaR = maioresIdade.firstWhere((map) => map['nome'].startsWith('r'), orElse: () => {});
print(comecaR);
var menorIdade = pessoa.singleWhere((map) => map['idade'] < 18 );
print(menorIdade);

double mediaIdade = pessoa.map(idades).reduce(soma) / pessoa.length;

print(mediaIdade);
  
}

//---------------------------------------Reduce()----------------------------------------------------
void mapReduce(){
  List<Map<String,dynamic>> alunos = [
    {'nome':'ricacio','nota':7,'bolsista':true},
    {'nome':'lucas','nota':8.9,'bolsista':true},
    {'nome':'Ana','nota':9.9,'bolsista':true},
    {'nome':'Carmem','nota':10,'bolsista':false},
  ];
// delegando as funções anônimas para constantes finais

final bool Function(dynamic) bolsista = (map) => map['bolsista'] as bool;
final dynamic Function(dynamic) nome =  (map) => map['nome'];
final dynamic Function(dynamic) nota =  (map) => map['nota'];
final dynamic Function(dynamic,dynamic) soma =  (ant,atu) => ant + atu;

// ----------------------------------------------------------------------

  List<dynamic> listaBolsistasNome =  alunos.where(bolsista).map(nome).toList();
  List<Map<String, dynamic>> mediaBolsista =  alunos.where(bolsista).toList();
  dynamic media = mediaBolsista.map(nota).reduce(soma) / mediaBolsista.length;
 var todosBolsistas =  alunos.map((map) => map['bolsista']).every((element) => element);
 var temAlgumBolsista = alunos.map((map) => map['bolsista']).reduce((ant,atu) =>  ant || atu);
 print('Todos são bolsistas ? ${todosBolsistas ? 'Sim !!!' : 'Não'}\nTem algum bolsista ? ${temAlgumBolsista ? 'Sim' : 'Não'}');
 print('Lista dos nomes dos alunos Bolsistas $listaBolsistasNome,\n Média dos alunos bolsistas $media ');

 List<dynamic> funcionarios = [
  {'nome':'ricacio','genero':'H','pais':'Brasil','salario':1670},
  {'nome':'lucas','genero':'H','pais':'Brasil','salario':1889},
  {'nome':'Carmem','genero':'M','pais':'Peru','salario':2500},
 ];

final brasileiros = (map) => map['pais'] == 'Brasil';
final homem = (map) => map['genero'] == 'H';
final menorSalario = (ant,atu) => ant['salario'] < atu['salario'] ? ant['salario'] : atu['salario'];
final funMenorSala = (ant,atu) => ant['salario'] < atu['salario'] ? ant : atu;
List<dynamic> selecionados = funcionarios.where(brasileiros).where(homem).toList();

print(selecionados);

print(selecionados.reduce(menorSalario));
print(selecionados.reduce(funMenorSala));

}

void mapObject(){
  Carro carro1 = Carro('Honda','Civic');
  var carro2 = Carro('Toyota','Corola');
  Carro carro3 = new Carro('Fiat','Palio');

/**
 * Declaramos o Map() carros
 * declaramos as chaves [''] e inicializamos as mesmas.
 */
  Map<String,Carro> carros = Map();
  carros['0'] = carro1;
  carros['1'] = carro2;
  carros['2'] = carro3;

 print(carros);

 for(int i  = 0; i < carros.length;i++){
  print('marca: ${carros['${i}']!.marca}, modelo:${carros['${i}']!.modelo}');
 }

 print('');

 for(var key in carros.keys){
  final valor = carros[key];
  print('chave:$key,valor:$valor');
 }
 print('');
 carros.forEach((key,value) => print('Marca:${value.marca}, Modelo:${value.modelo}'));
 print('');
}