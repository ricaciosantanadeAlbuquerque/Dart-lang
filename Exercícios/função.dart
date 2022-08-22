import 'dart:io';
void main(){
  int? op = menu();
  int j = calculando(op!); // calculando é uma função que recebe  op como argumento para um parâmetro e retorna um valor para resposta
  // COMO op é uma variável do tipo null, tive que informar ao compilador que o argumento op não é null usando !
  print("O valor desta operação é  $j "); // ${} interpolação !
}
//======================================MENU============================================================================================
 int? menu(){
  print("Digite [1] para somar ");
  print("Digite [2] para subtrair ");
  print("Digite [3] para multiplicar ");
  print("Digite [4] para dividir");
  String? entrada = stdin.readLineSync();
  int valor = int.parse(entrada!); // estou afirmando para o construtor  que está varialvel não é nula.

     if(valor >= 1 && valor <= 4){// entre 1 e 4
          return valor;
     }else{
      print("Valor fora da faixa, o programa será fehado ");
      exit(0);
     } 

     /**
      *  Veja que só será retornado um valor caso a condição seja verdadeira 
      *  se não for verdadeira  será  retornado null, e para tal precisamos  de um retorno do tipo int null e uma
      *  variável do tipo int null para guardar o valor. 
      */
           
 }
 //==========================CALCULADORA=====================================================================================================
  int calculando(int valor){
    int resposta;
      if(valor >= 1 && valor <= 4){ // entre 1 e 4 inclusivo
               switch(valor){
        case 1:
          print("Digite o primeiro valor ");
        String? entrada = stdin.readLineSync();
        print("Digite o segundo valor ");
        String? entrada1 = stdin.readLineSync();
        // converção dos valores
        int num1 = int.parse(entrada!); // ! estou a firmando que está variável não é nula !
        int num2 = int.parse(entrada1!); // seu valor foi passado para inteiro e jogado para num2
        // soma
         resposta = num1 + num2;
        // retornar o valor   
        break;

        case 2:
        print("Digite o primeiro valor ");
        String? entrada = stdin.readLineSync();
        print("Digite o segundo valor ");
        String? entrada1 = stdin.readLineSync();
        
        int x = int.parse(entrada!);
        int y = int.parse(entrada1!);

         resposta = (x - y);
        break;

        case 3:
        print("Digite o primairo valor ");
        String? j = stdin.readLineSync();
        print("Digite o segundo valor ");
        String? i = stdin.readLineSync();

        int num1 = int.parse(j!);
        int num2 = int.parse(i!);

         resposta =  num1 * num2 ;

        break;
         case 4:
         print("Digite o primairo valor ");
         String? entrada = stdin.readLineSync();
         print("Digite o segundo valor ");
         String? entrada1 = stdin.readLineSync();

         int num1 = int.parse(entrada!);
         int num2 = int.parse(entrada1!);
         
         resposta =  (num1/num2).toInt(); // . toString() converte para String .toInt() converte para int .toDouble cv double
         break;

         default:
         print("Valor fora da faixa!  programa será fechado !");
         exit(0);
         
      }

      return resposta; // retorno

      }else{
          print("Valor fora da faixa, o programa será fechado! ");
          exit(0); // saindo do programa;
      }

    
  }