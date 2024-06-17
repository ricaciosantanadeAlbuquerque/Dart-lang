void main(List<String> args){
  mapMap();
}


void mapMap(){
  List<Map<String,dynamic>> carrinho = [
    {'nome':'Borracha','preco':3.45},
    {'nome':'Caderno','preco':13.9},
    {'nome':'KitLapis','preco':41.22},
    {'nome':'Caneta','preco':7.5},
  ];

  /// Closure
 Function(dynamic) porcentagem(desconto) => (valor) => desconto * valor['preco'];
 final moeda = (value) => 'RS ${value.toDouble().toStringAsFixed(2).replaceFirst('.',',')}';

 var preco = carrinho.map(porcentagem(0.9)).map(moeda);
 var preco02 = carrinho.map((map) => map.update('preco',(valor) => 0.9 * valor)).map(moeda).toList();
  print(preco); // coleção de Iterable
  print(preco02);

var precoMedio = (carrinho.map((map) => map['preco']).reduce((ant,atu) => ant + atu) / carrinho.length).toStringAsFixed(2);
print(precoMedio); 

 List<Map<String,Object>> escola = [
  { 
    'nome':'Turma 1',
    'alunos':[
      {'nome':'ricacio','nota':7},
      {'nome':'lucas','nota':9}
    ]
  },
  {'nome':'turma 2',
  'alunos':[
    {'nome':'Ana','nota':8},
    {'nome':'Carmem','nota':10}
  ]}
 ];

 var alunosEscola = escola.map((map) => map['alunos']).expand((e) => e as Iterable).toList(); // expand() concatena os elementos de uma lista
 print(alunosEscola);

  alunosEscola.sort((b,a) => a['nota'].compareTo(b['nota']));
  print('');
  print(alunosEscola);
  var mediaNotas = alunosEscola.map((map) => map['nota']).reduce((ant,atu) => ant + atu) /alunosEscola.length;
  print(mediaNotas);

  alunosEscola.forEach((map) => print('${map['nome']}, ${map['nota']}') );

}