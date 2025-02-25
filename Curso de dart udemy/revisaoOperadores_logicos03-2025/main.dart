void main() {
  /// Operador && só irá retornar verdadeiro, se ambas as afirmações forem verdadeiro.
  /// Operador || retornará verdadeiro se apenas uma afirmação for verdadeira.
  /// Operador ! inverte o valor lógico  !true == false e !false == true

  var verdadeiro = !false;
  bool falso = !true;

  print(' Verdadeiro: ${verdadeiro}' ' e ' ' Falso: ${falso} '.trim());
  print('Operador (!)  !true  =  ${!true} !false = ${!false}');

  // ignore: dead_code
  bool teste1 = verdadeiro || verdadeiro; // true  ||  true == true
  // ignore: dead_code
  bool teste2 = verdadeiro || falso; // true ||  false == true
  // ignore: unused_local_variable
  bool teste3 = falso || falso; // false ||  false == false

  print('Operador (||)  ${teste1} - ${teste2} - ${teste3}');

  bool verificar1 = true && true;
  bool verificar2 = true && false;
  // ignore: dead_code
  bool verificar3 = false && false;

  print('Operador (&&) ${verificar1}, - ${verificar2} - ${verificar3}');

  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao);

  operacao = !(1 > 2) && ((3 < 2) || falso);

  print('');
  print(operacao);
}
