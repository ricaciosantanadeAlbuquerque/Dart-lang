void main(List<String> args) {
/**
 * Função para  valor numericos
 * num é um tipo primitivo que é pai de double e int por tanto aceita tanto double quanto int 
 */

  num pi = 3.14;

  print(pi.floor()); // fazer o arredondamento para baixo ! no caso o valor será 3
  print(pi.round()); // faz o arredondamento para o valor mais próximo ate 3.30 e para baixo acime de 3 e meio e para cima
  print(pi.ceil()); // Faz o arredondamento para cima
  print(pi.clamp(3, 3.14)); // retorna um valor dentro do intervalo
  print(pi.compareTo(2)); // retorna 1 porque o valor de pi é maior
  print(pi.compareTo(35)); // como o valor de pi é menor então retorna -1
  print(pi.compareTo(3.14)); // como o valor de pi é igual ao valor comparado então retorna 0
  print("resto" + (2.remainder(3).toString())); //   Retorna o restante da divisão euclidiana. A divisão euclidiana de dois inteiros a e b produz dois inteiros q e r tais que a == b *
  print(pi.truncate()); // elimina o valor apos a virgula
  print(pi.toInt()); // converte para inteiro !
  print(pi.toDouble()); // converte para double
  print(pi.toString()); // converte para String
  print(pi.toStringAsFixed(2)); // converte para String e recebe a quantidade de casas decimais  que o valor deve ter
  print(pi.isNegative); // false não é negativo  isNegative retorna true ou false valor bool
  print(pi.isInfinite); // false
  print(12.gcd(16));
  print('1'.padLeft(2, '0')); // me permite colocar casas decimais a  esquerda
  print("10".padLeft(3, "1"));
  /**
   * A função gcd() retorna o máximo divisor  comum  entre  os dois valores que no caso é 4 
   */
}
