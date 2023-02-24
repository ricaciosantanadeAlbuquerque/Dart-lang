/**
 * Construa um algoritmo de PORTUGOL para determinar se o indivíduo esta com um peso
favorável. Essa situação é determinada através do IMC (Índice de Massa Corpórea), que é
definida como sendo a relação entre o peso (PESO) e o quadrado da Altura (ALTURA) do
indivíduo. Ou seja.
 */
import 'dart:io';

void main() {
  print("Digite seu Peso ! ");
  String? entrada1 = stdin.readLineSync();
  print("Digite sua altura por favor ! ");
  String? entrada2 = stdin.readLineSync();

  if(entrada1 != null && entrada2 != null){
    if(entrada1.isNotEmpty && entrada2.isNotEmpty){
        try{
           
           double peso = double.parse(entrada1);
           double altura = double.parse(entrada2);

           double IMC = peso/(altura * altura);

           if(IMC < 20 ){
            print("Abaixo do peso ");
           }else if(IMC >= 20 && IMC <25){
            print(" Peso Normal ");
           }else if(IMC >= 25 && IMC < 30){
            print(" Sobre Peso ");
           }else if(IMC >= 30 && IMC < 40){
            print("Obeso");
           }else{
            print("Obeso Mórbido");
           }

        }catch(NumberFormatException){
          print("Digite apenas valores numericos ");
          }
    }else{
      print(" Digite um valor válido por favor ");
    }
  }else{
    print("Digite um valor por favor !");
  }

}
