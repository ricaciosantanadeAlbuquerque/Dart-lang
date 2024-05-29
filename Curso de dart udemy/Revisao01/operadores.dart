void main(){
/**
 * ()
 * * / ~/ %
 * + -
 * >
 * <
 * >=
 * <=
 * !=
 * ==
 * &&
 * ||
 * !
 * +=
 * -=
 * *=
 * /=
 * ~/=
 * ??
 * ??=
 */

 double num1 = 10;
 double num2 = 5;
  
   num1 += 50;
   print(num1);
  
   double soma = num1 + num2;
   double subtracao = num1 - num2;
   double multiplicacao = num1 * num2;
   double divisao = num1 / num2;
   int divisaoInt = num1.toInt() ~/ num2.toInt();
  
  print('Soma:${soma}, Subtração ${subtracao}, multiplicação: ${multiplicacao}, divisao:${divisao} divisãoInt:${divisaoInt}');

   /**
    * + soma
      - subtracao
      * multiplicação
      / divisão
      ~/ divisão inteira
      () parênteses, maior ordem de presendencia
      %  resto da divisão
      += Soma igual
      -= subtração igual
      *= multiplicação iguaç
      /= divisão igual
      ~/= divisão inteira igual
      %= resto da divisão igual
      ++  incremento unitário
      --  decremento unitário.
    */



}
