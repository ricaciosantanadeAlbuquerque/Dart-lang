void main(List<String> args) {
  String nome = "lucas";
  String sobrenome = "Santana";
  int idade = 28;
  double altura = 1.80;
  bool adulto = true;

  print("\n nome:" + "$nome \n QTD Letras: ${nome.length} " + '''\nSobrenome: $sobrenome \n QTD Letras  ${sobrenome.length}''');

  // é possível  descobrir a quantidade  de letras de uma palavra usado a variável . length  isso ocorre porque tudo em dart é um objeto Exemplo (nome.length  )
  print(''' Idade: $idade, nome: $nome, altura: $altura, adulto: $adulto''');

  // constantes  não podem ter seu valor alterado
  // constantes tem seu valor atribuido em tempo de compilação

  const PI = 3.14; // este valor não será alterado durante a execução do programa

  print("\n$PI");

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = "Três";
  variavel = true;
  print(variavel);

  // variáveis do tipo dynamic podem variar  para qualquer tipo  em tempo de execução e compilação

  /**
   *  espaço "\b"
   *  formfeed "\f"
   *  newline "\n"
   *  return  "\r"
   *  tab   "\t"
   */
}
