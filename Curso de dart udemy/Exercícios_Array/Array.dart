import 'dart:io';

void main() {
  /**
   * CADASTRE 3 TIMES DE FUTEBOL E MOSTRE QUEM JOGA COM QUEM, PORÉM  O TIME NÃO PODE JAMAIS JOGAR COM ELE MESMO
   */
  List<String> jogo = [];
  print("Digite o nome do primeiro time ");
  String? entrada1 = stdin.readLineSync();
  print("Digite o nome do segundo time ");
  String? entrada2 = stdin.readLineSync();
  print("Por fim digite o nome do terceiro time ");
  String? entrada3 = stdin.readLineSync();

  // inserindo dados no array =========================================================
  String timeA = entrada1!;
  String timeB = entrada2!;
  String timeC = entrada3!;

  jogo.add(timeA);
  jogo.add(timeB);
  jogo.add(timeC);

  // para cada um loop do laço mais externo, o interno executa todos os seus loop até que a condição seja falsa.
  for (int i = 0; i < 3; i++) {// 0 1 2
    for (int j = 0; j < 3; j++) {// O 1 2
      if (jogo[i] != jogo[j]) {
        print("${jogo[i]} joga com ${jogo[j]}\n");
      }
     
    }
  }

/**
 *  entradas vasco  flamengo e botafogo
 * primeiro i será 0 e j sera 0 
 *  i == 0 j == 1 se forem valores diferentes então mostra o valor da lista jogo[]  na posição i e j  porém não são 
 *  i == 0 j == 1  vasco joga com flamengo
 *  i == 0 j == 2  vasco joga com botafogo
 * agora  o indice j é zerado pois o loop se completou  e i recebe mais 1
 * i == 1 j == 0  flamengo joga com vasco
 * i == 1 j == 1 neste caso flamengo está na posição 1 e flamengo não é diferente de flamengo, não mostra
 * i == 1  j == 2  flamengo joga com botafogo
 * agora  o indice j é zerado pois o loop se completou  e i recebe mais 1
 * i == 2 j ==  0  botafogo joga com vasco
 * i == 2 j == 1   botafogo joga com flamengo
 * i == 2 j == 2  nete caso o valor do array jogo na posção 2 é botafogo por tanto não é diferente 
 */
}
