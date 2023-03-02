/**
 * Numa eleição existem três candidatos
 * identificados pelos números 1, 2 e 3. Faça um
 * algoritmo que compute o resultado de uma
 * eleição. Inicialmente o programa deve pedir o
 * número total de votantes. Em seguida, deve
 * pedir para cada votante votar (informando o
 * numero do candidato) e ao final mostrar o
 * número de votos de cada candidato.
 */
import 'dart:io';

void main() {
  String cadi1 = "lula";
  String cadi2 = "serra";
  String cadi3 = "ciro";
  int totalVotantes = 0;
  int cont1 = 0;
  int cont2 = 0;
  int cont3 = 0;
  print("por favor digite o total de eleitores PARA esta URNA !\n");
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {
        totalVotantes = int.parse(entrada);
        print("==========VOTAÇÃO============\n");
        print("==========OPÇÕES============\n");
        print("Digite [1] para votar em lula !");
        print("Digite [2] para votar em serra");
        print("Digite [3] para votar em  ciro");
        for (int j = 0; j < totalVotantes; j++) {
          print(" Por favor digite o número de seu candidato ! ");
          String? numeroEntrada = stdin.readLineSync();
          if (numeroEntrada != null) {
            if (numeroEntrada.isNotEmpty) {
              try {
                int numero = int.parse(numeroEntrada);
                if (numero == 1) {
                  cont1++;
                  print("$cont1 voto para $cadi1");
                } else if (numero == 2) {
                  cont2++;
                  print("$cont2 voto para $cadi2");
                } else {
                  cont3++;
                  print("$cont3 voto para $cont3");
                }
              } catch (NumberFormatException) {
                print("Digite apenas valores numéricos !");
              }
            } else {
              print("Digite apenas valores válidos");
            }
          }
        }
        print("Total de votos para o candidato $cadi1 é de $cont1");
        print("Total de votos para o candidato $cadi2 é de $cont2");
        print("Total de votos para o candidato $cadi3 é de $cont3");

        if (cont1 > cont2 && cont1 > cont3) {
          print("O vencedor é $cadi1");
        } else if (cont2 > cont1 && cont2 > cont3) {
          print("O vencedor é $cadi2");
        } else if (cont3 > cont1 && cont3 > cont2) {
          print("O vencedor é $cadi3");
        }else if(cont1 == cont2 && cont2 == cont3){
           print(" Empate entre os candidatos");
        }else if (cont1 == cont2) {
          print("Empate ! de $cadi1 e $cadi2");
        }else if(cont1 == cont3){
          print("Empate ! de $cadi1 e $cadi3");
        }else if(cont3 == cont2){
          print("Empate ! de $cadi3 e $cadi2");
        }
      } catch (NumberFormatException) {
        print("Digite apenas valores numericos ! \n");
      }
    } else {
      print("Digite apenas valores válidos !\n");
    }
  }
}
