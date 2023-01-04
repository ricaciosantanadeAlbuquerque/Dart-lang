import 'Dart:io';

/**
 * 6 - Faça um programa que leia um vetor de 5 posições para números reais e, depois, um código inteiro. Se o 
código for zero, finalize o programa; se for 1, mostre o vetor na ordem direta; se for 2, mostre o vetor na ordem 
inversa. Caso, o código for diferente de 1 e 2 escreva uma mensagem informando que o código é inválido.

 */
void main() {
  var reais = [1.5, 2.33, 550.45, 12.00, 7.8]; // 5 == 0 a 4

  print("=================MENU=============");
  print("Digite [1] para mostrar o vetor na ordem direta");
  print("Digite [2] para mostrar o vetor na ordem inversa");
  String? op = stdin.readLineSync();
  int opcao = int.parse(op!);

  switch(opcao){
    case 1:
        for(int j =0; j < reais.length;j++){
            print("posição $j  valor ${reais[j]}");
        }
    break;
    case 2:
    for(int i = reais.length - 1; i >= 0; i--){
      print("posiação $i valo ${reais[i]}");
    }
  
    break;
    case 0:
    print("O programa será encerrado !");
    exit(0);
    break;
    default:
    print(" código é inválido!");
    exit(0);

  }
}
