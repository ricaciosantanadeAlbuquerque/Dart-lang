void main(){
mapReduce();
}



void mapReduce(){
 List<Map<String,dynamic>> alunos = [
  {'nome':'ricacio','nota':7,'bolsista':false},
  {'nome':'lucas','nota':8,'bolsista':true},
  {'nome':'Ana','nota':9,'bolsista':true},
  {'nome':'Carmem','nota':10,'bolsista':false},
 ];

 final bool Function(dynamic)bolsista = (map) => map['bolsista'] as bool;
 final dynamic Function(dynamic) nomes = (map) => map['nome'];
 final dynamic Function(dynamic) nota  =(map) => map['nota'];
 final dynamic Function(dynamic,dynamic) soma = (dynamic ant ,dynamic  atu) => ant + atu;
 List<dynamic> nomeBolsistas = alunos.where(bolsista).map(nomes).toList();
 List<Map<String,dynamic>> mediaBolsistas = alunos.where(bolsista).toList();
 var media = mediaBolsistas.map(nota).reduce(soma) / mediaBolsistas.length;

 print(nomeBolsistas);
 print(media);

 var todosSaoBolsistas = alunos.map(bolsista).reduce((ant,atu) =>  ant && atu);
 var algumBolsista = alunos.map(bolsista).reduce((ant,atu) => ant || atu);
 print('Todos São bolsistas ? ${todosSaoBolsistas ? 'Sim' : 'Nçao'}');
 print('Algum bolsista ? ${algumBolsista ? 'Sim' : 'Não'}');


 List<dynamic> funcionarios = [
  {'nome':'ricacio','genero':'H','pais':'Uruguai','salario':1670},
  {'nome':'Marta','genero':'M','pais':'Brasil','salario':1550},
  {'nome':'Chloe','genero':'M','pais':'Brasil','salario':2500},
 ];

 final bool Function(dynamic) brasileiro = (map) => map['pais'] == 'Brasil';
 final bool Function(dynamic) mulheres = (map) => map['genero'] == 'M';
 dynamic Function(dynamic,dynamic) menorSalario = (ant,atu) => ant['salario'] < atu['salario'] ? ant['salario'] : atu['salario']; 
 var funcioMenorSala = (ant,atu) => ant['salario'] < atu['salario'] ? ant : atu;

var mulheresBrasileiras = funcionarios.where(brasileiro).where(mulheres).toList();
print(mulheresBrasileiras);
print(mulheresBrasileiras.reduce(menorSalario));
print(mulheresBrasileiras.reduce(funcioMenorSala));
 }