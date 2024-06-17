void main(){
 mapMap();
}


void mapMap(){
  List<Map<String,dynamic>> carrinho = [
    {'nome':'Borracha','preco':3.45},
    {'nome':'Caderno','preco':13.9},
    {'nome':'KitLapis','preco':41.22},
    {'nome':'Caneta','preco':7.5}
  ];

  Function(dynamic) porcentagem(desconto) => (map) => desconto * map['preco'];
  final moeda = (element) => 'RS ${element.toDouble().toStringAsFixed(2).replaceFirst('.',',')}';
 Iterable<String> preco1 =  carrinho.map(porcentagem(0.9)).map(moeda);
 List<String> preco01 = preco1.toList();
  print(preco1);
  print(preco01);

  var preco2 =  carrinho.map((map) => map.update('preco',(e)=> 0.9 * e)).map(moeda).toList();
  print('');
  print(preco2);
  print('');

  var mediaPreco = (carrinho.map((map) => map['preco']).reduce((anterior,atual) => anterior + atual) / carrinho.length).toStringAsFixed(2);

  print(mediaPreco);

 List<Map<String,Object>> escola = [
  {'nome':'Turma 1',
   'aluno': [
    {'nome':'ricacio','nota':10},
    {'nome':'lucas','nota':9},
   ]
  },
  {'nome':'Turma 2',
    'aluno': [
      {'nome':'Carmem','nota':8.5},
      {'nome':'Ana','nota':7}
    ] }];

List<dynamic> alunosNotas = escola.map((map) => map['aluno'] ).expand((e) => e as Iterable).toList();
print(alunosNotas);    
alunosNotas.sort((a,b) => a['nota'].compareTo(b['nota']));
print(alunosNotas);
var mediaNotas = (alunosNotas.map((map) => map['nota']).reduce((ant,atu) => ant + atu) / alunosNotas.length).toStringAsFixed(2);
print(mediaNotas);

}