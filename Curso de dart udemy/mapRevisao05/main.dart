void main(){
 mapWhere();
}

void mapWhere(){

List<Map<dynamic,dynamic>> produto = [
  {'nome':'Notebook','preco':2500,'fragil':true},
  {'nome':'IPad','preco':4200,'fragil':true},
  {'nome':'iPhone','preco':2300,'fragil':true},
  {'nome':'Magic Mousa','preco':300,'fragil':false},
];
var fragil = (map) => map['fragil'] == true;
final nome = (map) => map['nome'];

var produtosFiltrados = produto.where(fragil).map(nome).toList();
print('Produtos Frágeis: $produtosFiltrados\n');

List<Map<String,dynamic>> pessoas = [
  {'nome':'ricacio','idade':30},
  {'nome':'lucas','idade':28},
  {'nome':'kalvin','idade':17},
  {'nome':'Carmem','idade':45},
];

List<Map<String,dynamic>> listPessoasMaiores = pessoas.where((map) => map['idade'] >= 18).toList();
Map<String,dynamic> comL = pessoas.firstWhere((map) => map['nome'].startsWith('l'), orElse: () => {});
Map<String,dynamic> menores = pessoas.singleWhere((map) => map['idade'] < 18, orElse: () => {});

final dynamic Function(dynamic) idades = (map) => map['idade'];
final dynamic Function(dynamic,dynamic) soma = (ant,atu) => ant + atu;

final media = (pessoas.map(idades).reduce(soma)) / pessoas.length;

print('Maiores de idade: ${listPessoasMaiores}\n começa com L ${comL}\n  menores: $menores \n media das idades : $media');

print('Todos são maiores de idade ${pessoas.every((map) => map['idade'] >= 18)}');
}

