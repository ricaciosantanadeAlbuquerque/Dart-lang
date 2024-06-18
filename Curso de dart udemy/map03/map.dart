

void main(){
 mapMap();
}

void mapMap(){
 List<Map<String,dynamic>> carrinho = [
  {'nome':'Borracha','preco':3.45},
  {'nome':'Cardeno','preco':13.9},
  {'nome':'KitLapis','preco':41.22},
  {'nome':'caneta','preco':7.5},
 ]; 

 Function(dynamic) porcentagem(desconto) => (valor) => desconto * valor['preco'];
 final moeda = (element) => 'RS ${element.toDouble().toStringAsFixed(2).replaceFirst('.',',')}';

 var preco =  carrinho.map(porcentagem(0.9)).map(moeda).toList();
 var preco02 = carrinho.map((map) => map.update('preco',(valor) => 0.9 * valor)).map(moeda).toList();
 print(preco);
 print(preco02);

 var precoMedia = (carrinho.map((map) => map['preco']).reduce((ant,atu) => ant + atu) / carrinho.length).toStringAsFixed(2);
 print(precoMedia);

  print('Lista de preco 1 $preco,\n Lista de preco 2 $preco02, \n preco médio $precoMedia');

  List<Map<String,Object>> escola = [
    {'nome': 'Turma 1',
     'alunos':[
      {'nome':'ricacio','nota':7},
      {'nome':'lucas','nota':8},
     ]
    },

    {'nome':'turma 2',
     'alunos':[
      {'nome':'Ana','nota':9},
      {'nome':'Carmem','nota':10},
     ]}
  ];

  var alunosEscola = escola.map((map) => map['alunos']);

  print(alunosEscola); // coleção de Iterable

  var alunosAgrupados = alunosEscola.expand((e) => e as Iterable); // expand() concatena os elemneto de uma lista gerando uma nova coleção de Iterable
   print(alunosAgrupados);
  var resultList =  alunosAgrupados.toList();
  resultList.sort((b,a) => a['nota'].compareTo(b['nota']));
  print(resultList);
  var notas = resultList.map((map) => map['nota']);
  var mediaNotas = notas.reduce((ant,atu) => ant + atu) / notas.length;
  print(notas);
  print(mediaNotas);
  print('');
  resultList.forEach((map) => print('Nome: ${map['nome']}, Nota:${map['nota']}'));
}