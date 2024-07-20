import 'carro.dart';
import 'pessoa.dart';

void main(){

  mapReduce();

 Carro carro1 = Carro('Honda','civic');
 Carro carro2 = Carro('Toyota','corola');
 Carro carro3 = Carro('Fiat','palio');

 Map<String,Carro> carros = {'0':carro1,'1':carro2};
 carros['2'] = carro3;

 print(carros); 

 for(int i = 0; i < carros.length;i++){
  print('Marca: ${carros['${i}']!.marca}, modelo: ${carros['${i}']!.modelo}');
 }

  print('');

 for(var key in carros.keys){
  final carro = carros[key];
  print('Marca:${carro!.marca}, modelo:${carro.modelo}'); 
 }

 print('');


 carros.forEach((key,value){
    print('Marca:${value.marca}, modelo: ${value.modelo}');
 });

 Pessoa p1 = Pessoa('ricacio',idade:29,peso:65);
 Pessoa p2 = Pessoa('lucas',idade:27,peso:80);

 print('');
 Pessoa.mostrarPessoa();

 Pessoa.alterarDetalhes('ricacio',idade:32,peso:64);

 Pessoa.mostrarDetalhes(nome: 'ricacio');
 Pessoa('ricacio',idade:45); // essa Instânica já existe.
 Pessoa('Marta');
 Pessoa.mostrarPessoa();
 p2.peso = 72;
Pessoa.mostrarDetalhes(nome:'lucas');
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

