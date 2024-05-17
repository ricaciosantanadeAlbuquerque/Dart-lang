import 'dart:collection';
import 'dart:io';
import 'dart:math';
void main(List<String> args){
  Queue<String> nomes = Queue();

   for(var i = 0; i < 10 ; i++){
     print('Digite seu nome');
     String? entradaNome = stdin.readLineSync();
     if(entradaNome != null && entradaNome.isNotEmpty){
      nomes.add(entradaNome);
     }else{
      print('ERRO! Valor não informado !!');
      exit(0);
     }
   }

   print('O Ganhador ou Ganhadora é ${nomes.elementAt(Random().nextInt(10 + 1))}');

}