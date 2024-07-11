void main(List<String> rags){
 mapReduce();
}


void mapReduce(){
  List<Map<String,dynamic>> alunos = [
    {'nome':'ricacio','nota':10,'bolsista':true},
    {'nome':'lucas','nota':9.9,'bolsista':true},
    {'nome':'Marcio','nota':8.8,'bolsista':true},
    {'nome':'Marta','nota':10,'bolsista':false},
  ];

  final bool Function(dynamic) bolsista = (map) => map['bolsista'] as bool;
  final dynamic Function(dynamic) nomes = (map) => map['nome'];
  final dynamic Function(dynamic) notas = (map) => map['nota'];
  final dynamic Function(dynamic,dynamic) soma = (ant,atu) => ant + atu ;

  var bolsistasNome = alunos.where(bolsista).map(nomes).toList();
  print(bolsistasNome); 
  var alunosBolsistas = alunos.where(bolsista).toList();
  print(alunosBolsistas);
  var media = (alunosBolsistas.map(notas).reduce(soma) /alunosBolsistas.length).toStringAsFixed(2);
  print(media);

  var todosBolsistas = alunos.map(bolsista).reduce((ant,atu) => ant && atu);
  var algumBolsista = alunos.map(bolsista).reduce((ant,atu) => ant || atu);

  print(todosBolsistas);
  print(algumBolsista);


  List<Map<String,dynamic>> pessoas  = [
    {'nome':'Lucas','idade':28},
    {'nome':'Matheus','idade':30},
    {'nome':'Ana','idade':40},
  ];

  var maiorIdade = pessoas.map((map) => map['idade']).reduce((ant,atu) => ant > atu ? ant : atu);
  var menorIdade = pessoas.map((map) => map['idade']).reduce((ant,atu) => ant < atu ? ant : atu);
  var mediaIdade = (pessoas.map((map) => map['idade']).reduce((ant,atu) => ant + atu) / pessoas.length).toStringAsFixed(2);

  print('Maior idade $maiorIdade \n menor idade $menorIdade');
  print(mediaIdade);

  List<dynamic> funcionarios = [
    {'nome':'Leia','genero':'M','pais':'Brasil','salario':1599.70},
    {'nome':'Fernando','genero':'H','pais':'Argentina','salario':1234.36},
    {'nome':'Chloe','genero':'M','pais':'Brasil','salario':1730.30}
  ];
 
 var nacionalidade = (map) => map['pais'] == 'Brasil';
 var mulher = (map) => map['genero'] == 'M';
 var funcMenorSala = (ant,atu) => (ant['salario'] < atu['salario']) ? ant : atu;
 dynamic Function(dynamic, dynamic) menorSalario = (ant, atu) => ant['salario'] < atu['salario'] ? ant['salario'] : atu['salario']; 
 
 var listaBrMulher = funcionarios.where(nacionalidade).where(mulher).toList();
 var listaBrMulherNome = listaBrMulher.map((map) => map['nome']);

 print(listaBrMulher);
 print(listaBrMulherNome);
 print(listaBrMulher.reduce(menorSalario));
 print(listaBrMulher.reduce(funcMenorSala));


}