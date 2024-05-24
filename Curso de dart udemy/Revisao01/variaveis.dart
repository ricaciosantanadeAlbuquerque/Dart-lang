void main(){
  String nome = 'riucacio';
  nome = 'Lucas'; // sobrepondo o valor da variável

  String  sobreNome = 'Santana';

  print(nome + sobreNome); // concatenação de variáveis

  String? cor;

  String resultado = cor ?? 'Sem cor'; // ?? operador de assignação

  print(resultado.runtimeType); // runtimeType
  print(resultado);

  int valor = 10;

  print(valor.runtimeType);
  print(valor);

  double valorQuebrado = 5.5;
  print(valorQuebrado.runtimeType);
  print(valorQuebrado);

  // ignore: unused_local_variable
  bool isTrue = 1 < 0 ; // operadores relacionais retornam  sempre um valor boleano

  bool status = true;

  String test = (status == true) ? 'verdade':'falso';

  print(test);

  print('Teste de valor ${status == true ? 'verdade' : 'falso'}');

  var nome2; // var é dynamic enquato não recebe valor algum. Quando ele recebe um dado passa a ser tipado por inferência
    print(nome2);
   nome2 = 'ricacio';
   print(nome2);
   print(nome2.runtimeType);
  
   // ignore: unused_local_variable
   var numero = 10;
   numero = 100; // sobreposição de valores, var permite sobreposição desde que o dado seja de mesmo tipo.

    dynamic salario  = 1670;
         print(salario);

     salario = 2000;
          print(salario);

     salario =  '3000';
          print(salario);

     salario = true;

     print(salario);
     print(salario.runtimeType);

     // o tipo dynamic recebe qualquer tipo de dado


     String? nome3 = 'lucas';
     int? idade3 = 29;
     double? altura = 1.80;
     bool? valor3 = true;
     var sobreNome3 = 'Santana';
     dynamic test3  = ' teste';

     print('${nome3}, ${idade3}, ${altura}, ${valor3}, ${sobreNome3}, ${test3}');
     

}