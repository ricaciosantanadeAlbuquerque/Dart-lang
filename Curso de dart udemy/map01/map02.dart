void main(){
 mapMap();
}

mapMap(){
  List<Map<String,dynamic>> carrinho = [

  {'nome':'Borracha','preco':3.45},
  {'nome':'Caderno','preco':13.9},
  {'nome':'KitLapis','preco':41.22},
  {'nome':'Lapis','preco':7.5},

  ];


   Function(dynamic) porcentagem(desconto) => (valor) => desconto  * valor['preco'];
   final moeda = (value) => 'RS ${value.toDouble().toStringAsFixed(2).replaceFirst('.',',')}';

   var preco = carrinho.map(porcentagem(0.9));
   List<String> preco1 = preco.map(moeda).toList();
   print(preco);
   print(preco1);

   var preco2 = carrinho.map((map) => map.update('preco',(value) => 0.9 * value));
   print('');
   print(preco2);
   var preco3 = preco2.map(moeda).toList();
   print('');
   print(preco3);

  var precoMedio = (carrinho.map((map) => map['preco']).reduce((ant,atu) => ant + atu) / carrinho.length).toStringAsFixed(2);
  print('');
  print(precoMedio);
  print('');


  List<Map<String,Object>> escola = [
    {'nome':'Turma 1',
      'alunos':[
        {'nome':'ricacio','nota':9.5},
        {'nome':'lucas','nota':8.8}
      ]
    },
    {'nome':'Turma 2',
     'alunos': [
      {'nome':'Carmem','nota':10},
      {'nome':'Ana','nota':7.5}
     ]
     }
  ];

  List<dynamic> alunosEscola = escola.map((map) => map['alunos']).expand((e) => e as Iterable).toList();
  print(alunosEscola);

  alunosEscola.sort((b,a) => a['nota'].compareTo(b['nota']));
  print('');
  print(alunosEscola);

  var mediaNotas = (alunosEscola.map((map) =>  map['nota']).reduce((ant,atu) => ant + atu)) / alunosEscola.length;
  print('');
  print(mediaNotas);

}