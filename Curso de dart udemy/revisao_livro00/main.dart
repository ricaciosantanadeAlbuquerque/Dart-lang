void main() {
  print('Variáveis');
  // Variáveis são espaços alocados na memória para guardar valores

  // comentário de uma linha é //
  // comentário de bloco /** */
  // comentário de documentação ///

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado = valorA + valorB + valorC;
  print(resultado);
  print('');
  var salario = 1000, desconto = 250; // variáveis do mesmo tipo podem ser declaradas na mesma linha.
  var conta = salario - desconto;
  print(conta);
  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);

  print('concatenar ' " String " ''' é simples'''); // com a função print não é necessário usar + para concatenar String

  var texto1 = 'Ricacio';
  var texto2 = "Santana";
  var texto3 = '''Albuquerque'''; // Strings podem ser '' "" ''' '''

  var nome = texto1 + texto2 + texto3;
  print('');
  print(nome);

  print('');

  var verdadeiro = true;
  var falso = false;

  print('Verdadeiro: = ${verdadeiro}');
  print('Falso = ' + "$falso");

  print(''.runtimeType);

  const pi = 3.14;
  print(pi);

  nome = 'Ricacio';
  String sobrenome = 'Santana';
  int idade = 29;
  double altura = 1.72;
  bool adulto = true;

  print('\nnome: ' + "$nome \n QTD letras: ${nome.length}" + """\n Sobrenome: $sobrenome \n QTD lestras: ${sobrenome.length}\n """);

  print('''
  idade: $idade,
  altura: $altura,
  adulto: $adulto,
  \npi: $pi\n
''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'ricacio';
  variavel = true;
  print(variavel);

  int num2 = 12;
  double num3 = 34;
  String texto = 'Ricacio';
  bool num4 = true;
  num num1 = 10.12;
  Object num5 = 'Santana';
  dynamic trocaValor = 77.7;
  var num6 = num2 + num1;

}
