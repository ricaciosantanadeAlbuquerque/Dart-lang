/** JOGO da Sorte
 * Elabore um programa que recebe o nome de 10 pessoas, e os armazene em um array.
 * O programava deve sortear um ganhador 
 */
import 'dart:io';
import 'dart:math';

void main() {
  List<String> nomes = [];
  // 0 a 9

  // preenchendo o array
  for (var i = 0; i < 10; i++) {
    print('Digite o ${i + 1} nome');
    String? nomeEntrada = stdin.readLineSync();

    if (nomeEntrada != null) {
      if (nomeEntrada.isNotEmpty) {
        nomes.add(nomeEntrada);
      } else {
        print("É necessário digitar um valor !");
        exit(0);
      }
    } else {
      print("Digite um valor válido !");
      exit(0);
    }
  }
  // nesta linha 29 já temos o array totalmente preenchido.
  print(nomes);
  /**
   * Através do Objeto ou instância Random() podemos evocar o método nextInt(10) passando o valor 10 como argumento.
   * O método irá retornar valores aleatórios inteiros entre 0 e 9, pois e sempre o valor - 1.
   * Logicamente podemos usar este valores inteiros para referenciar as posições do array já preenchido de forma aleatória
   */
  int ale = Random().nextInt(10); // 0 a 9

  print("O ganhador é ${nomes[ale]}");
}
