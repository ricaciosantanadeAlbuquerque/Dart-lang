import 'dart:io';
import 'dart:math';

/*5 - Faça um programa que leia um vetor de 10 posições e verifique se existem valores iguais e os escreva na tela.
 */
main() {
  Random rand = new Random();
  List<int> num1 = [];
  List<int> subList = [];
// GERANDO VALORES PARA LISTA DE FORMA ALEATÓRIA
  for (int j = 0; j < 10; j++) {
    // 0 a 9
    num1.add(rand.nextInt(10) + 1);
  }
  //print(num1.length);
  print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
  print(num1);
  // ADICIONANDO VALORES IGUAIS
  for (int i = 0; i < num1.length; i++) {
    for (int j = i + 1; j < num1.length; j++) {
      //print("XXXXXXX${i}XXXXXX");
      // print("=====${j}=======");
      if (num1[i] == num1[j]) {
        subList.add(num1[i]);
        break;
      }
    }
  }
// REMOVENDO REDUNDANCIA NÍVEL 1
  print("=======================================");
  for (int i = 0, j = i + 1; j < subList.length; j++) {
    if (subList[i] == subList[j]) {
      subList.removeAt(i);
    }
  }
  print(subList);
  print("+++++++++++++++++++++++++++++++++++");
// REMOVENDO REDUNDANCIA NÍVEL 2
  for (int i = 0; i < subList.length; i++) {
    for (int j = i + 1; j < subList.length; j++) {
      if (subList[i] == subList[j]) {
        subList.removeAt(j);
      }
    }
  }
   print(subList);
  print("-------------------------");
  // REMOVENDO REDUNDANCIA NÍVEL 3
  for (int i = 0; i < subList.length; i++) {
    for (int j = i + 1; j < subList.length; j++) {
      if (subList[i] == subList[j]) {
        subList.removeAt(j);
      }
    }
  }
// POR FIM UMA LISTA  COM OS VALORES MAS SEM REDUNDANCIA
  print(subList);
}
