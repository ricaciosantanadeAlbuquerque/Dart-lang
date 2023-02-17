void main() {
  String nome = "ricacio";
  String nomeCompleto = "ricacio Santana";

  print(nome.toLowerCase()); // converte para minusculo;
  print(nome.toUpperCase()); // converte para maiúsculo
  print(nome.trim()); // elimina os espaços vazios no começo e fim da String
  print(nome.split(" ")); // retorna um array seperado por vazio
  print(nome.split('')); // retorna um array
  print(nome.substring(1, 7)); // retorna uma parte da String dentro dos intervalos passados
  print(nome.startsWith('r')); // existe r em nome ? true
  print(nome.startsWith('icacio', 1)); //existe icacio em nome ? true
  print(nome.replaceAll('a', 'o')); // troca tudo que for 'a' por 'o';
  print(nome.replaceFirst('rica', '')); // troca o primeiro parameto por vazio;
  print(nome.replaceFirst('o', 'a', 6)); // trocando 'o' por 'a' na posição 6
  print(nome.replaceRange(3, 5, '')); // trocar os caracteres da posição 3 até a 5 por vazio;
  print(nome.contains('i')); // contem 'i' ? true or false;
  print(nome.contains('r', 1)); // contem 'r' na primeira posição !??
  print(nome.indexOf('ca')); // retorna a posição
  print(nome.length); // retorna o tamaho da string;
  print(nome.endsWith('o')); // verifica se a String termina com o parametro passado.
  print(nome.compareTo('ricacio')); // == 0
  print(nome.compareTo('rica')); // 1 pois a string contem o valor passado
  print(nome.compareTo('ana')); // -1 não contem o valor
  print(''.isEmpty); // é vazia ?
  print('1' is String);
  print(double.parse('12')); // converte para double
  print(int.parse('10'));
}
