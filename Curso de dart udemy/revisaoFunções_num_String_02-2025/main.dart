// funções numericas

void main() {
  /// funções Numéricas

  num pi = 3.14;

  /// 3
  print(pi.floor()); // Arredonda para baixo.
  /// 3
  print(pi.round()); // Arredonda para  o inteiro mais próximo
  /// 4
  print(pi.ceil()); // Arredonda para  o inteiro superior mais próximo.
  /// 3.14
  print(pi.clamp(3, 4)); // Arredonda para um valor entre o intervalo passado.
  // -1 se pi for menor, 0 se pi for igual, 1 se pi for superior
  print(pi.compareTo(3)); // compara valor
  print(pi.remainder(3)); // resto da divisão de pi pelo 3
  print(pi.toInt()); // converte  o  valor do tipo num para int
  print(2.toDouble()); // converte para double
  print(pi.toString()); // converte para String
  print(pi.toStringAsFixed(3)); // converte para Strings com  casas decimais
  print(pi.truncate()); // elimina as casas após o ponto.
  print(pi.isNegative); // verifica se é negativo
  print(pi.isInfinite); // verifica se é infinito.
  print(12
      .gcd(16)); // retorna  o máximo diviso comum entre os valores. No caso 4.

  /// funções String texto

  String nome = 'Ricacio';
  String sobreNome = ' Ricacio Santana ';

  print(nome.toLowerCase()); // Converte toda String para minúsculo.
  print(nome.toUpperCase()); // converte toda String para Maiúsculo.
  print(sobreNome.trim()); // Elimina os espaços Vazios antes e Depois da String
  print(sobreNome.split('')); // converte a String em um  array de caracteres
  print(sobreNome.substring(1, 7)); // retorna um intervalo de valores
  print(nome.startsWith('R')); // treu
  print(nome.startsWith('rica')); // false
  print(nome.replaceAll('a', 'o')); // troca tudo que  é [a] para [o]
  print(nome.replaceFirst('R', 'T')); // troca o primeiro [R] por [T]
  print(nome.replaceFirst('o', 'a')); //  troca o primeiro [o] por [a]
  print(
      nome.replaceRange(0, 5, 'X')); // subistitui um  intervalo de caracteres,
  // X

  // Toda String é um array []

  print(sobreNome.trim().split(''));
  print(nome.contains('r')); // false
  print(nome.contains('R')); // true
  print(
      nome.indexOf('o')); // retorna a posição do caractere. Ou  valor passado.
  print(sobreNome.length); // retorna o tamanho da String.
  print(nome.endsWith('o')); // true  , termina com o ? == true
  print(nome.compareTo('Ricacio')); // 0
  print(nome.compareTo('jjjjj')); // -1
  print(nome.compareTo('RIcac')); // 1

  /**
   *  o método compareTo() retorna  0 se os valores forem iguais.
   *  retorna 1 se houver caracteres dentro da String semelhantes aos passados como argumento.
   *  e retorna  -1 se os valores comparados forem totalmente diferentes.
   */

  print(''.isEmpty); // é vazio ? return == true
  print(''.isNotEmpty); // não é vazio ? == false

  // ignore: unnecessary_type_check
  print('Estudar com foco' is String); // validação == true

  // converções

  // ignore: unnecessary_type_check
  print(int.parse('12') is int);
  // ignore: unnecessary_type_check
  print(double.parse('55.5') is double);
  print(double.tryParse('500') ?? 0.0);
  print(num.parse('72'));

  print('1'.padLeft(3, '0'));
  print('33'.padRight(3, '33'));
}
