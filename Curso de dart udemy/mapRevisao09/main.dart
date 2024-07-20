void main(List<String> rags){
  mapReduce();
}


void mapReduce(){
  List<Map<String,dynamic>> alunos = [
    {'nome':'ricacio','nota':7.8,'bolsista':true},
    {'nome':'lucas','nota':8.9,'bolsista':false},
    {'nome':'Ana','nota':9.9,'bolsista':true},
    {'nome':'Carmem','nota':10,'bolsista':true}
  ];

 final bool Function(dynamic) bolsista = (map) => map['bolsista'] as bool;
 final nome = (map) =>  map['nome'];
 final nota = (map) => map['nota'];
 final soma = (ant,atu) => ant = atu;

 var listaBolsistas = alunos.where(bolsista).map(nome);
 print('Lista dos nomes dos alunos bolsistas $listaBolsistas');

 List<Map<String,dynamic>> listBolsista =  alunos.where(bolsista).toList();
 var media = listBolsista.map(nota).reduce(soma) / listBolsista.length;
 print('Media dos bolsistas ${media.toDouble().truncate()}');

 var todosBolsistas = alunos.map(bolsista).reduce((ant,atu) => ant && atu);
 var algumBolsista = alunos.map(bolsista).reduce((ant,atu) => ant || atu);

 print('Todos são bolsistas ? ${todosBolsistas ? 'Sim' : 'Não'}\nAlgum Bolsista ? ${algumBolsista ? 'Sim' : 'Não'}');
 
}