void main() {
  String nome = "fernando";
  String nomeCompleto = "\t Fernando Martins ";
  print(nome.toLowerCase()); // converte os caracteres para minuscuilo!
  print(nome.toUpperCase()); // converte os caracteres para maiúsculo!
  print(nomeCompleto.trim()); // Trim() elimina os espaços vazios no começo e fim
  print(nome.split('')); // retorna um array de caracteres  guardados em nome
  print(nome.split(" ")); // retornar um array de caracteres  separado pelo parâmetro passado
  print(nome.substring(3, 8)); // captura um intervalo de caracteres o 8  não é inclusivo
  print(nome.startsWith('F')); // quero saber se no começo da String guardada em nome o começo é F
  print(nome.startsWith('nando', 3)); // quero saber se nando está na posição 3
  print(nome.replaceAll('a', 'o')); // quero trocar o valor de a por a o
  print(nome.replaceFirst('Fer', '')); // quero trocar no inicio  valor de Fer por vazio
  print(nome.replaceFirst('o', 'a', 7)); // quero trocar o valor de 'o' por 'a' na posição 7
  print(nome.replaceRange(3, 5, '')); // subistitui um conjunto de caracteres dentro dos intervalos pelo valor passado
  print(nome.contains('F')); //  se conter retorna true se não retorna false
  print(nome.contains('e', 1));
  print(nome.indexOf('nando')); // retorne a posição de nando
  print(nome.length); // retorna o tamanho da String
  print(nome.endsWith('o')); // verifica se no final da String contem 'o'
  print(nome.compareTo('Fernando')); // se nome for igual a Fernando retorna  0
  print(nome.compareTo('Fer')); //   retorna 1  se o parâmetro Fer existir dentro de nome
  print(nome.compareTo("kkk")); // retorna -1 se não existe
  print(' '.isEmpty); // e vazio ?
  print(double.parse('12.5')); // convertendo uma String para double
  print(int.parse('12') is int); // convertendo para inteiro e perguntando se é inteiro
  print(12.runtimeType); // retorna o tipo da variável
  print(nome.lastIndexOf('a')); // retorna o ultimo indice dentro de nome que contem 'a'
  num numero = 3.3;

  print(numero is double); //true
  print(numero is! double); // false;
}
