/**
 * As	maçãs	 custam	 R$	 0,30	 cada	 se	 forem	 compradas	menos	 do	 que	 uma	
   dúzia,	 e	 R$	 0,25	 se	 forem	 compradas	 pelo	 menos	 doze.	 Escreva	 um	
   programa	 que	 leia	 o	 número	 de	 maçãs	 compradas,	 calcule	 e	 escreva	 o	
   valor	total	da	compra
 */
import 'dart:io';

void main() {
  print("Digite o número de maçãs que você deseja comprar !");
  String? entrada = stdin.readLineSync();

  int numeroMacas = int.parse(entrada!);

  if (numeroMacas > 0 && numeroMacas < 12) {
    double valor = 0.30;
    double resultado = numeroMacas * valor;
    print("O valor total da compra é  ${resultado.toStringAsFixed(2)}");
  } else {
    double valor = 0.25;
    double resultado = numeroMacas * valor;
    print(" O valor total da compra é ${resultado.toStringAsFixed(2)}");
    
  }
}
