void main(List<String> args) {
  String nomeCompleto = 'Ricacio Santanade Albuquerque';

  print(nomeCompleto.toLowerCase()); // deixa todas as letras minúsculas
  print(nomeCompleto.toUpperCase()); // deixa todas as Letras maiúsculas
  print(nomeCompleto.trim()); // Elimina os espaços vazios no começo e  fim da String
  print(nomeCompleto.split(' ')); // retorna  um array com os valores separados  de acordo com o argumento passado
  print(nomeCompleto.split('')); // array de String()
  print(nomeCompleto.substring(3, 8)); // retorna um intervalo de caracteres de acordo com os intervalos passados sendo que o ultimo não é incluido exemplo: substring(3,8)  3 ate 7
  print(nomeCompleto.startsWith('R')); // verifica se o nome dentro da variável começa com R. retorno tipo bool
  print(nomeCompleto.startsWith('cacio', 2)); // verifica se do index 2 para fente  contem 'cacio'
  print(nomeCompleto.replaceAll('a', 'o')); // troca tudo que e 'a' por 'o' dentro da String.
  print(nomeCompleto.replaceFirst('Rica', '1992')); // troca a primeira ocorrencia por 1992
  print(nomeCompleto.startsWith('Ricacio')); // true
  print(nomeCompleto.replaceFirst('a', 'o', 3)); // troque a por o no index 3
  print(nomeCompleto.replaceRange(0, 3, '')); // troque todo intervalo de String() do index 0 ate o index 3 por '' vazio
  print(nomeCompleto.trim().split(' ')); // retorna  um array cujos os elementos não  possuem espaçõs vazios no começo e fim mas tem os elementos do array separados por um vaizo
  print(nomeCompleto.contains('R')); // o retorno dessa função é   tipo bool true or false
  print(nomeCompleto.contains('i', 1)); // true;
  print(nomeCompleto.indexOf('cio')); // retorna o index  desses caracteres
  print(nomeCompleto.compareTo('Ricacio Santanade Albuquerque')); // quando o valor comparado é igual ao argumento passado retorna 0;
  print(nomeCompleto.compareTo('Rica')); // quando o valor comparado possui o argumento dentro de sí retorna 1;
  print(nomeCompleto.compareTo('z')); // quando o  argumento não existe dentro do valor comparado é -1
  print(nomeCompleto.endsWith('o')); // no final da String  existe o caractere o ?;
  print(nomeCompleto.isEmpty); // é fazio ? retorno tipo bool;
  print(nomeCompleto.isNotEmpty); // Não é vazio ? retorno bool;
  print('1' is String); // é uma String ? retorno bool;
  print(int.parse('12') is int); // é inteiro ? retorno bool;
  print(double.parse('23') is double); // é double ? retorno bool;
  print('1'.padLeft(2, '0')); // quero a String  con duas casa sendo 0 a esquerda;
}
