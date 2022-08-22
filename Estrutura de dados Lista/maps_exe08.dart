import 'dart:io';
import 'dart:math';
void main(){
  /* Criar um array de valores aleatórios double */
  Random ale = new Random();
  Map<int,double> rand = new Map();
   
   for(int i = 0; i <4; i ++){
      rand[i] = ale.nextDouble()+10.truncateToDouble();
   }
   print(rand); 
}