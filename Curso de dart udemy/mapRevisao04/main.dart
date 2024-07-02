void main(){
 everyMap();
}


void everyMap(){
  List<Map<String,dynamic>> pessoas = [
    {'nome':'ricacio','idade':30},
    {'nome':'lucas','idade':25},
    {'nome':'Ana','idade':23},
    {'nome':'dora','idade':52},
    {'nome':'Matheus','idade':17}
  ];

  print(pessoas.every((map) =>  map.containsKey('nome')));
  print(pessoas.every((map) => map['idade'] > 17 ));
  bool resultado = pessoas.every((map) => map['nome'].startsWith('L') );
  print(resultado);

 List<Map<String,dynamic>> funcionario = [
  {'nome':'ricacio','cargo':'dev junior flutter','salario':3400},
  {'nome':'João','cargo':'adiministradora','salario':5000},
  {'nome':'Marta','cargo':'professora','salario':6700},
 ];

 // queremos saber se todos eles ganham acima de 3000

 print(funcionario.every((map) => map['salario'] > 3000 ));
 print(funcionario.every((map) => map.containsKey('salario')));
 print(funcionario.every((map) => map['nome'].startsWith('r') ));

 List<int> numero = [0,1,2,3,4,5,6,7,8,9,10];

 print(numero.every((e) => e > 0));

 for(var i = 0; i < numero.length; i++){
   numero[i] = ++numero[i];
 }
 print(numero);

 print(numero.every((elemnt) => elemnt > 0));

}


