void main(){
  mapReduce();
}

mapReduce(){
  List<Map<String,dynamic>> alunos = [
    {'nome':'Fernando','nota':7.3,'bolsista':false},
    {'nome':'Leila','nota':9.2,'bolsista':true},
    {'nome':'Chloe','nota':9.8,'bolsista':true},
    {'nome':'Bartolomeu','nota':8.7,'bolsista':false},
  ];

  final bolsistas = (map) => map['bolsista'] as bool;
  final nomes = (map) =>  map['nome'];
  final notas = (map) => map['nota'];
  final soma = (ant,atu) => ant + atu;

  // uma lista de bolsistas

  var listBolsistas = alunos.where(bolsistas).map(nomes).toList();
  print(listBolsistas);

  var bolsistasMedia = alunos.where((bolsistas)).toList();

 print(bolsistasMedia);

 dynamic media =  bolsistasMedia.map(notas).reduce(soma) / bolsistasMedia.length;
 bool todoBolsistas = alunos.map(bolsistas).reduce((ant,atu) => ant && atu);
 bool algumBolsista = alunos.map(bolsistas).reduce((ant,atu) => ant || atu);

print('Todos São bolsistas ? ${todoBolsistas ? 'Sim' : 'Não'}\nAlgum bolsistas ? ${algumBolsista ? 'Sim' : 'Não'}');
print('Alunos Bolsistas $listBolsistas, \n Média dos bolsistas $media');

List<dynamic> funcionarios = [
  {'nome':'ricacio','genero':'H','pais':'Brasil','salario':1670},
  {'nome':'Lucas','genero':'H','pais':'Brasil','salario':1560},
  {'nome':'Ana','genero':'M','pais':'Argentina','salario':2500},
];

final  brasileiros = (map) => map['pais'] == 'Brasil';
final  homem = (map) => map['genero'] == 'H';
final dynamic Function(dynamic,dynamic) menorSalario = (ant,atu) => ant['salario'] < atu['salario'] ? ant['salario'] : atu['salario'];
final dynamic Function(dynamic,dynamic) funcMenorSalario = (ant,atu) => ant['salario'] < atu['salario'] ? ant : atu;

var selecionados = funcionarios.where(brasileiros).where(homem).toList();
print(selecionados);
print(selecionados.reduce(menorSalario));
print(selecionados.reduce(funcMenorSalario));

/**
 * map((e) => e)  
 * where((e) => e > 10 ) 
 * reduce((ant,atu) => ant + atu) 
 * expand((e) => e) 
 * every((e) => e == j)
 */




}