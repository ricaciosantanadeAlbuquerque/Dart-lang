void main() {
  num pi = 3.14;
  num pe = 3.50;
  print(pi.floor()); // arredonda para baixo !
  print(pi.round()); // 'round() de 3.50 Arredonda para cima, valores menores arredonda para baixo.
  print(pe.round());
  print(pi.ceil()); // arredonda para cima!
  print(pi.clamp(3, 3.50)); // arredonda para um valor dentro do intervalo
  print(pi.compareTo(3.14)); // 0 ser for igual // -1 se pi for inferior // e 1 se pi for maior
  print(pi.remainder(3)); // retorna um  valor fracionado.
  print(pi.toInt()); // converte para Inteiro;
  print(pi.toDouble()); // converte para double;
  print(pi.toString()); // converte para String();
  print(pi.toStringAsFixed(2)); // converte para String e mostra o valor com casas decimais
  print(pi.truncate()); // elimina as casas decimais  após a virgula
  print(pi.isNegative); // informa se o valor é negativo
  print(pi.isInfinite); // true or false
  print(12.gcd(16)); // retorna o máximo divisor comum os valores comparados
  print('1'.padLeft(2, '0')); // quero duas casa decimais sendo zero a esquerda
}
