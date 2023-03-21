/* Faça um método que simule a ocupação dos quartos de um hotel. Considere que existem cinco andares e dez quartos por andar. O objetivo é  saber se um quarto está oculpado ou não. O método deve possuir um menu com as opções 1 imprimir lista de quartos, 2 definir ocupação e 3 sair. A opção 1 lista todos os quartos, informando se estão ou não ocupados, a opção 2  permite definir os Status 'ocupado' ou 'livre' para qualquer um dos quartos, A opção 3 encerra o programa.  */
import 'dart:io';

void main() {
  List<List<String>> matrizHotel = [];
  String op = ''; // condição
  for (int i = 0; i < 3; i++) {   //0 a 2
  
    List<String> hotel = [];
    for (int j = 0; j < 5; j++) {
      hotel.add('livre');
    }
    matrizHotel.add(hotel);
  }


  
  do {
      int opcao = menu();
    //print(opcao);
    hotelOpcao(opcao, matrizHotel);
    print("\nDeseja continuar ? [sim] ou [nao]\n");
    String? opE = stdin.readLineSync();
    op = opE!;
  } while (op == 'sim');
}

//================== Menu =================

int menu() {
  int opcao = 0;
  print(" 1 lista todos os quartos ");
  print(" 2 permite definir os Status ");
  print(" 3 encerra o programa.");
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {
        opcao = int.parse(entrada);
      } catch (NumberFormatException) {
        print("\nO valor digitado não é um número \n");
      }
    }
  }
  return opcao;
}

//================== Hotel =================

void hotelOpcao(int opcao, List<List<String>> Matriz) {
  switch (opcao) {
    case 1:
      int numero = 0;
      for (var j in Matriz) {
        for (int index = 0; index < j.length; index++) {
          print("Quarto ${(numero++).toString().padLeft(2, '0')} ${j[index]}");
        }
      }
      break;
    case 2:
      int cont = 0;

      print("\nDigite o número do quarto que voce desja ocupar !\n");
      String? entrada = stdin.readLineSync();
      if (entrada != null) {
        if (entrada.isNotEmpty) {
          try {
            int valor = int.parse(entrada);

            for (var element in Matriz) {
              // element é um array <String>
              for (int i = 0; i < element.length; i++) {
                if (cont == valor) {
                  if (element[i] == 'livre') {
                    element[i] = 'ocupado';
                  } else {
                    print("\nO quarto já está ocupado. Tente outro \n");
                  }
                }
                cont++;
              }
            }
          } catch (e) {
            throw Exception("ERRO! o valor ($entrada) não é um número");
          }
        }
      }
      print(Matriz);

      break;
    case 3:
      print("\n O programa será encerrado ! \n");
      exit(0);
      break;
    default:
      print(" \n os Valores digitados estão fora da faixa permitida ! \n");
      break;
  }
}
/**
 *  

      
 */