void main(){
mapMap();
}


void mapMap(){
  List<Map<String,dynamic>> carrinho = [
    {'nome':'Borracha','preco':3.45},
    {'nome':'Caderno','preco':13.9},
    {'nome':'KitLapis','preco':41.22},
    {'nome':'Caneta','preco':7.5},
  ];

  Function(dynamic) porcentagem(desconto) => (valor) => desconto  *  valor['preco'];
  final moeda = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.',',')}'; 

  var preco1 = carrinho.map(porcentagem(0.9)).map(moeda).toList(); // caso não seja passado toList() será gerada uma coleção de Iterable
  var preco2 = carrinho.map((map) => map.update('preco',(valor) =>  valor * 0.9)).map(moeda).toList();
  print(carrinho);
  var mediaPreco = (carrinho.map((map) => map['preco']).reduce((ant,atu) => ant + atu) / carrinho.length).toStringAsFixed(2);

  print(preco1);
  print('');
  print(preco2);
  print('');
  print(mediaPreco);


  List<Map<String,Object>> escola = [
    {'nome':'turma T1',
     'alunos':[
      {'nome':'ricacio','nota':8.1},
      {'nome':'lucas','nota':9.3},
     ]
    },

    {
     'nome':'turma T2',
     'alunos':[
      {'nome':'dora','nota':8.9},
      {'nome':'Carmem','nota':7.3}
     ]  
    }
  ];

  var alunosEscola = escola.map((map) => map['alunos']).expand((e) => e as Iterable).toList();
  print(alunosEscola);
  alunosEscola.sort((b,a) => a['nota'].compareTo(b['nota']));
  print(alunosEscola);
  var mediaNota =  alunosEscola.map((e) => e['nota']).reduce((anterior,atual) => anterior + atual) / alunosEscola.length;
  print(mediaNota);



}