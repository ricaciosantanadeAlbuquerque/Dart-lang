void main() {
  /// O operador Ternário se comporta com um if()else

  // ignore: dead_code
  if (!true) {
    // se fosse mas não é true é false !true == false
    print("verdadeiro");
  } else {
    print("falso");
  }
  // ternário

  // ignore: dead_code
  print("${!true ? "verdadeiro" : "falso"}");

  // ternário encadeado

  var idade = 18;
  print((idade < 14
      ? "Criança"
      : (idade < 18)
          ? "Adolecente"
          : "Adulto"));

  int nota = 70;
  String resultado = (nota < 40)
      ? "Reprovado"
      : (nota < 70)
          ? "Recuperação"
          : "Aprovado";
  print(resultado); // se          senao        se             senao

  int numero = 12;

  print("Numero: $numero é ${(numero % 2 == 0 ? "par" : "impar")} e ${(numero >= 0 ? "positvo" : "negativo")}");

  int multiplo = 3;

  print("Numero: $numero ${(numero % multiplo == 0) ? "é" : "não e"} multiplo de $multiplo");

  var numeroJ = 5;
  print(numero % numeroJ);
  print(numero.remainder(numeroJ));

  int ano = 1992  ;
  print("ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? "é bissexto" : "não é bissexto"}");
}
