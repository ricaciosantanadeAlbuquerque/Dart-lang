/**
 * Um sorteio de brindes será feito em um supermercado este mês. 
 * faça uma função que recebe quatro nomes de brindes, e sorteia um desse brindes. 
 */
import 'dart:math';
import 'dart:io';

void main() {
  print("Digite os Brindes que serão sorteados ");
  String? entrada1 = stdin.readLineSync();
  String? entrada2 = stdin.readLineSync();
  String? entrada3 = stdin.readLineSync();
  String? entrada4 = stdin.readLineSync();

  if (entrada1 != null && entrada2 != null && entrada3 != null && entrada4 != null) {  // se não é  nulo
   
    if ((entrada1.isNotEmpty)&& (entrada2.isNotEmpty) && (entrada3.isNotEmpty) && (entrada4.isNotEmpty)) {  // nem é vazio

         sorte(brinde1: entrada1, brinde2: entrada2, brinde3: entrada3, brinde4: entrada4);
         
    } else {
      print("ERRO !");
    }
  } else {
    print("ERRO!");
  }
}

void sorte({required String brinde1, required String brinde2, required String brinde3, required String brinde4}) {
  var objetoSorte = Random().nextInt(4) + 1;
  //print(objetoSorte);
  switch (objetoSorte) {
    case 1:
      print("\nO Brinde sorteado foi : $brinde1\n");
      break;
    case 2:
      print("\nO Brinde sorteado foi : $brinde2 \n");
      break;
    case 3:
      print("\nO Brinde sorteado foi : $brinde3\n");
      break;
    case 4:
      print("\nO Brinde sorteado foi : $brinde4\n");
      break;
  }
}
