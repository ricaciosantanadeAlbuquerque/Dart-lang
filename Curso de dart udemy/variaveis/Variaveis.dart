void main() {
  // Declarando e inicializando variáveis
  //   var valorA; declaração
  //   var valorA = 10 inicializada com 10

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado = valorA + valorB + valorC;

  print(resultado);

 // criando variáveis na mesma linha separadas por virgula
 var salario = 1000 , desconto = 250; // Isso é possivel porque  elas são do mesmo tipo

 var conta = salario - desconto;
 print(conta); //  resultado 

 // concatenado String 
 var texto1 = '/nRicacio'; 
 var texto2 = "Santana";
 var texto3 = ''' Tenha fé /n''';
 
 var nome = texto1 + texto2 + texto3; // usamos o sinal de mais para concatenar String 

 print(nome);
 /**
  * É possível criar String em dart com uma aspas simples duas aspas simples ou 3 aspas simples 
  */

  print("");

  // interpolação de Strings
  var verdadeiro = true;
  var falso = false;

  print('falso = ${falso}');
  print("verdadeiro = ${verdadeiro}");
  // concatenção 
  print('falso'+ "$falso"); // para variáveis use só o $ dolar, para operações e resultados ou funções  use interpolação ${
  // para decobrir o tipo da variável use runtimeType
  print("/n");
  print("".runtimeType);  

  // variáveis  do tipo var são tipadas de forma implícita ou seja seus tipos são inferidos pela entrada de dados 
  

  } 

