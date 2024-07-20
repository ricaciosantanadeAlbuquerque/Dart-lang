void main(){
  
  mapReduce();



}

void mapReduce(){
  List<Map<String,dynamic>> alunos = [
    {'nome':'ricacio','nota':7,'bolsista':false},
    {'nome':'lucas','nota':8,'bolsista':true},
    {'nome':'Ana','nota':9,'bolsista':true},
    {'nome':'Carmem','nota':10,'bolsista':true},
  ];
  
  final bolsista = (map) => map['bolsista'] as bool;
  final nome = (map) => map['nome'];
  final nota = (map) => map['nota'];
  final soma = (ant,atu) => ant + atu;

  List<dynamic> listaBolsista = alunos.where(bolsista).map(nome).toList();
  print(listaBolsista);
  Iterable<Map<String,dynamic>> mediaBolsistas = alunos.where(bolsista);
  var media =  mediaBolsistas.map(nota).reduce(soma) / mediaBolsistas.length;
  print(media);

  var todosBolsistas =  alunos.map(bolsista).reduce((ant,atu) => ant && atu);
  var algumBolsista = alunos.map(bolsista).reduce((ant,atu) => ant || atu);

  print('Todos Bolsistas ? ${todosBolsistas ? 'Sim' : 'Não'}\nAlgum bolsista ? ${algumBolsista ? 'Sim' : 'Não'}'); 


  List<dynamic> funcionarios = [
    {'nome':'ricacio','genero':'H','pais':'Brasil','salario':1500},
    {'nome':'lucas','genero':'H','pais':'Brasil','salario':2000},
    {'nome':'Ana','genero':'M','pais':'Brasil','salario':2500},
  ];


  final paisBraisl  = (map) => map['pais'] == 'Brasil'; 
  final genero = (map) => map['genero'] == 'H';
  final salario = (map) => map['salario'];
  final menorSalario = (ant,atu) => ant <  atu ? ant : atu;
 final funcMenorSalario = (ant,atu) => ant['salario'] < atu['salario'] ? ant : atu;
  var listBrasilHomem = funcionarios.where(paisBraisl).where(genero).toList();
  print(listBrasilHomem);

  var menorSalario2 = listBrasilHomem.map(salario).reduce(menorSalario);
  print(menorSalario2);

  var funcMenorSalario2 = listBrasilHomem.reduce(funcMenorSalario);

  print('Funcionário com menor salario ${funcMenorSalario2 as Map}');
}

