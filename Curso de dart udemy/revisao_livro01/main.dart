void main() {
  print('Operadores Lógicos!');

  /// O operador && será verdadeiro  quando ambas as afirmações forem verdadeiras.
  /// O operador || será verdadeiro se somente uma afirmação for verdadeira.
  /// O operador ! inverte o valor lógico

  var verdadeiro = !false;
  bool falso = !true;

  print('Verdadeiro: $verdadeiro, Falso: $falso\n');
  print('Operador (!) !true = ${!true} !false = ${!false}\n');
  // ignore: dead_code
  bool teste1 = verdadeiro || verdadeiro;
  // ignore: dead_code
  bool teste2 = verdadeiro || falso;
  bool teste3 = falso || falso;
  print('Operador (||) ${teste1} - ${teste2} - ${teste3}\n');
  // ignore: dead_code
  print('Operador (&&) ${true && true} - ${true && falso} - ${false && false}');

  bool operacao = (1 <= 2) && (3 > 2);

  print(operacao);

  /// operação  teve seu valor sobreposto. traduzindo recebeu um novo valor.

  operacao = !(1 > 2) && ((3 < 2) || falso);
              
  print(operacao);
}
