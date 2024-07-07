void main(){
  mapWhere();
}

void mapWhere(){
  List<Map<dynamic,dynamic>> produtos = [
    {'nome':'Notebook','preco':2500,'fragil':true},
    {'nome':'iPad','preco':4200,'fragil':true},
    {'nome':'iPhone','preco':2300,'fragil':true},
    {'nome':'Magic Mouse','preco':300,'fragil':false},
  ];


  bool Function(dynamic) fragil = (map) => map['fragil'] == true;
  final  dynamic Function(dynamic) nome = (map) => map['nome'];

  var listaProdutosfiltrada = produtos.where(fragil).map(nome).toList();
  print(listaProdutosfiltrada);
  print('Produtos Frageis: $listaProdutosfiltrada ');

  List<Map<String,dynamic>> pessoas = [
    {'nome':'ricacio','idade':30},
    {'nome':'lucas','idade':28},
    {'nome':'marta','idade':43},
    {'nome':'kalvin','idade':17},
  ];

  print('Todos são Maiores de idade ? ${pessoas.every((map) => map['idade'] > 18) ? 'Sim' : 'Não'}');

  List<Map<String,dynamic>> listPessoasMaioresIdade = pessoas.where((map) => map['idade'] >= 18).toList();
  Map<String,dynamic> comL = pessoas.firstWhere((map) => map['nome'].startsWith('l'),orElse:() => {});
  Map<String,dynamic> menor = pessoas.singleWhere((map) => map['idade'] < 18, orElse: () => {});

  print(listPessoasMaioresIdade);
  print(comL);
  print(menor);

  final idade = (map) => map['idade'];
  final soma = (ant,atu) => ant + atu;

  var mediaIdade = pessoas.map(idade).reduce(soma) / pessoas.length;

  print(mediaIdade);


  

}