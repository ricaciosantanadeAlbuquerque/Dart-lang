/**
 * Crie um algoritmo em que leia a idade de uma pessoa e informe a sua
classe eleitoral:
 não eleitor (abaixo de 16 anos);
 eleitor obrigatório (entre a faixa de 18 e menor de 65 anos);
 eleitor facultativo (de 16 até 18 anos e maior de 65 anos, inclusive).
 */
import 'dart:io';

void main() {
  print("Digite sua idade por favor ");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {

        int idade = int.parse(entrada);

        if((idade >= 16 && idade < 18)||(idade > 65)){
           print(" Voto facultativo !");
        }else if(idade >= 18 && idade < 65){
          print("voto obrigatórito");
        }else{
          print("Você não tem idade para votar !");
        }

      } catch (NumberFormatException) {

        print("Digite valores numéricos ");

      }
    } else {
      print("Digite um valor válido !");
    }
  } else {
    print("Digite um valor ");
    exit(0);
  }
}
