void main(List<String> args) {
  // 1) operador (!) de negação !
  var verdadeiro = !false;
  bool falso = !true;

  print("verdadeiro: $verdadeiro  e falso: $falso");
  print("\nOperador (!)  !true == ${!true} && !false == ${!false}");
  // como visto o operador de negação inverte os valores

// 2) operador &&

  bool teste1 = verdadeiro && verdadeiro; // true
  bool teste2 = verdadeiro && falso; // false
  bool teste3 = falso && falso; // false

  print(" Teste1: ${teste1} \n teste2: ${teste2}  \n teste3: ${teste3}"); // interpolação de Strings

  // 3) operador ||

  bool resultado1 = (true || true); // true
  bool resultado2 = (true || false); // true
  bool resultado3 = (false || false); // false

  print("resultado1: ${resultado1}");
  print("resultado2 ${resultado2}");
  print("resultado3: ${resultado3}");

  bool operacao = (1 <= 2) && (3 > 2);

  print(operacao); // true

  bool operacao1 = !(1 > 2) && ((3 < 2 || falso)); // false
  print(operacao1);
}
