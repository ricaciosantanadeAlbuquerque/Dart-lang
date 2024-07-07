void main(){
 mapWhere();
}

void mapWhere(){
List<Map<dynamic,dynamic>> produto = [
  {'nome':'notebook','preco':2500,'fragil':true},
  {'nome':'iPad','preco':4200,'fragil':true},
  {'nome':'iPhone','preco':2300,'fragil':true},
  {'nome':'Magic Mouse','preco':300,'fragil':false},
];

var fragil = (map) => map['fragil'] == true; // booleano
final nome = (map) => map['nome']; // String

List<dynamic> listaFiltradaProduto = produto.where(fragil).map(nome).toList();
print('Lista de produtos frageis: ${listaFiltradaProduto} ');

/**
 * Where() filtra os elementos de acordo com uma condição passada via função.
 * Recebe uma função anônima com parâmetro como parâmetro e retorna uma coleção de Iterable.
 * a função anônima retorna um booleano true ou false, e seu parâmetro enxerga cada elemento da lista.
 * os elemento que forem aprovados "true" farão parte da nova lista ( coleção de Iterable() )
 * 
 */

List<Map<String,dynamic>> pessoas = [
  {'nome':'ricacio','idade':30},
  {'nome':'lucas','idade':28},
  {'nome':'Ana','idade':43},
  {'nome':'Carmem','idade':17},
];

var listPessoasMaiores = pessoas.where((map) => map['idade'] >= 18).toList();
print(listPessoasMaiores);
Map<String,dynamic> comecaL = pessoas.firstWhere((map) => map['nome'].startsWith('l'), orElse: () => {}); // retorna uma única ocorrencia
print(comecaL);
var menor = pessoas.singleWhere((map) => map['idade'] < 18, orElse: () => {});
print(menor);

final dynamic Function(dynamic) idades = (map) => map['idade'];
final soma = (ant,atu) => ant + atu;

var mediaIdade = pessoas.map(idades).reduce(soma) / pessoas.length;

print('Média das Idade: ${mediaIdade}');

// testando lista pessoas
print(pessoas.every((map) => map['idade'] >= 18));
print(listPessoasMaiores.every((map) => map['idade'] >= 18));

List<Map<String,dynamic>> folhaPagamento = [
  {'nome':'ricacio','salario':1670},
  {'nome':'lucas','salario':2200},
  {'nome':'Ana','salario':3500},
  {'nome':'Carmem','salario':4800},
];

// usar every() para saber se todos ganham mais que 1500
print(folhaPagamento.every((map) => map['salario'] > 1500) ? 'Sim ! Todos ganham mais do que 1500': 'Não Nem todos ganham mais do que 1500');
var salario3000 = folhaPagamento.where((map) => map['salario'] > 3000).toList();
print(salario3000);
}