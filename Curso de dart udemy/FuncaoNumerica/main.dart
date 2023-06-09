void main(List<String> args) {
  /// num é pai do tipo int e double, num e super classe de int e double, portanto  recebe valores tanto int como double
  num pi = 3.14;

  print(pi);
  print("==================Funções Numéricas===================");
  print(pi.floor()); // faz o arredondamento para baixo
  print(pi.round()); // faz o arredondamento para o valor inteiro mais próximo. ( se for 3.14 fica == 3), (se for 3.64 fica == 4)
  print(pi.ceil()); // faz o arredondamento para cima.
  print(pi.clamp(3, 3.14));
  print(pi.compareTo(3)); // -1 se for inferior // 0 iguais  // 1 se for superior
  // se o valor de  pi  for inferior ao  valor  comparado, retorna -1, se o valor de 'pi' for igual ao valor comparado entao retorna 0
  // se o valor de pi for maior do que o valor comparado então  retorna 1
  print(pi.toInt()); // converte para inteiro
  print(pi.toString()); // converte para String
  print(pi.toStringAsFixed(2)); // converte para String com duas casas  apos a virgula
  print(pi.truncate()); // elimina os valores após a virgula
  print(pi.isNegative); // é negativo?
  print(pi.isInfinite); // é infinito?
  print(12.gcd(16)); // vai retorna o maximo divisor comum entre os valores 
}
