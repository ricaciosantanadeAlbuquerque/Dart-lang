void main(List<String> args) {
  var num1 = 10;
  var saldo = 350.87;
  var texto = "pago";
  var verdadeiro = !true;
  num x = 0;
  dynamic j = <dynamic>[];

  const PI = 3.14; //  dart é Case sensitive
  /// constantes não podem ter seu valor altera em tempo de xecução ou compilação

  // runtimeType possibilita descobrir  o tipo de uma variavel  em tempo de execução

  print(num1.runtimeType); // int

  print(saldo.runtimeType);

  print(texto.runtimeType);

  print(verdadeiro.runtimeType);

  print(j.runtimeType);

  print(x.runtimeType);

  print(PI.runtimeType);

  /**
   * Toda variável em dart é um objeto  por tanto  as variáveis possuem atribultos `{valores} métodos {ações} 
   * nexte caso é possível descobrir o tamanho de uma variável usando length
   * 
   */
  print(texto.length);

  String palavra = "rua manoel arruda cavalcante ";

  print("tamanho = ${palavra.length}");

  int idade = 36;
  double salario = 1500.00;
  String nome = "ricacio";
  bool adulto = true;

  print("nome: " + "$nome" + "idade:" + "$idade" + "salario:" + "${salario}" + "adulto:" + "$adulto");
  // concatenando String  utilizando o operador +
  // $ utilizando dolar para mostrar o valor da variável
  // ${} interpolação de Strings utilizado para operações mas pode mostrar o valor deuma variável

  var num3 = 10; // o tipo var e dinamica enquato não possui um valor atribuido a ela após a atribuição ela deixa de ser dinamica eee  tem seu valor definido pelo dado que foi atribuido a ela de forma implicita. Deste modo uma vez tipada  ela não é mais dynamic e passa a se comporta como uma variável fortimente tipada.
  num3 = 22;
  print(num3.runtimeType); // runtimeType mostra o tipo da variável 

  // num3 = 55.5;
}
