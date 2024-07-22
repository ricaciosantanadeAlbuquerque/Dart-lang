void main() {
  linkedHashMap();
  print('');
  mapMap();
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
 }
