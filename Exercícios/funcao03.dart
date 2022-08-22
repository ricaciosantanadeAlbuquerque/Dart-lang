//=================FUNÇÕES COM RETORNO  E COM PARÂMETRO ==============================================================================
 import 'dart:io';
 void main(){
//======================= MAIN()======================================================================================================
  int op = menu(); // chamada ao menu();
  double resposta = calculadora(op); // chamada a função calculadora passando op como argumento 
  print("O valor da o peração é $resposta ");
  print("\n======FIM==========\n");
 }
 //=========================MENU=======================================================================================================
  int  menu(){ // criamos uma função chamda menu() sem parâmetro, porém retorna um valor inteiro.
  int op;
    print("Digite [1] para somar. ");
    print("Digite [2] para subtrair.");
    print("Digite [3] para multiplicar. ");
    print("Digite [4] para dividir ");
    print("Digite [5] para sair ");
    String? entrada = stdin.readLineSync(); // entrada tem que ser nula porque caso o usário  não digite uma valor o comando stdin.readLineSync()
    // passa um valor null
    if(entrada != null){
      op = int.parse(entrada);
    }else{
      print("Por favor digite um valor valido!");
      for(int i = 0; i <= 1000;i++){

      }
    print("Digite [1] para somar. ");
    print("Digite [2] para subtrair.");
    print("Digite [3] para multiplicar. ");
    print("Digite [4] para dividir ");
    print("Digite [5] para sair ");
     String? entrada1 = stdin.readLineSync();
        op = int.parse(entrada1!);
    }
    if(op == null){
      print("Erro o programa será fechado ");
      exit(0);
    }
   return op; // retorno
  }
  //===========================CALCULADORA=============================================================================================
 double calculadora(int valor ){
    double retorno = 0;
      int cont = 0; 
      String resposta  = "sim";
    if(valor >= 1 && valor <=5){

        switch(valor){ // escolha valor 
            case 1: // caso seja 1
          
            while(resposta == "sim"){
               print("Digite um valor para somar ");
               String? entrada =  stdin.readLineSync();
               double num1 = double.parse(entrada!);
               retorno+= num1; // isso é a mesma coisa que  retorno = retorno + num1;
               // neste caso retorno acumula irá acumular os valores passados pelo usuário
               print("Deseja continuar [sim] ou [não] ? ");
               String? entrada1 = stdin.readLineSync();
               resposta = entrada1!; // informa ao compilador que entrada1 não é nula. 
            }
           
            break;
            case 2:
          
            while(resposta != "nao"){
             if(cont == 0){
            print("Digite o primeiro valor para subtrair.");
            String? entrada = stdin.readLineSync(); // entrada 1
            print("Digite o segundo valor ");
            String? entrada1 =stdin.readLineSync(); // entrada 2
            double num1 = double.parse(entrada!);
            double num2 = double.parse(entrada1!); 
              retorno = num1 - num2;
             }else{
              print("Digite o valor ");
              String? input = stdin.readLineSync();
              double num3 = double.parse(input!);
              retorno -= num3; // será o valor contido em retorno menos o  valor de entrada
             }
            cont++;
            print("Deseja continuar [sim] ou [não] ?"); // se deseja continuar
            String? x = stdin.readLineSync(); // entrada
            resposta = x!;
            }
             break;

            case 3:
             double retorno1 = 1;
             int cont1 = 0;
            while(resposta == "sim"){
             if(cont == 0){
              print("Digite um valor para começar.");
              String? entrada = stdin.readLineSync();
              double num1 = double.parse(entrada!);
              retorno *= num1;

             }else{
              if(cont1 ==0 ){
              print("Digite um valor !");
              String? entrada1 = stdin.readLineSync();
              double num2 = double.parse(entrada1!);
              
              retorno = retorno1 * num2;
              }else{
                print("Digite um valor !");
              String? entrada2 = stdin.readLineSync();
              double num4 = double.parse(entrada2!);
               retorno *= num4;
              }

             }
             cont++;
             print("Deseja continuar [sim] ou [não] ?"); // se deseja continuar
            String? x = stdin.readLineSync(); // entrada
            resposta = x!;
            }
             break;
            case 4:
            while(resposta =="sim"){
              if(cont == 0 ){
              print("Digite o primeiro valor !");
              String? entrada = stdin.readLineSync();
              print("Digite o segundo valor ");
              String? entrada1 = stdin.readLineSync();

              double num = double.parse(entrada!);
              double num1 = double.parse(entrada1!);
              retorno =  (num / num1) ;
              }else{
               while(retorno > 0){
                 print("Digite o valor ");
                String? input10 = stdin.readLineSync();
                double num5 = double.parse(input10!);

                retorno /= num5;
                break;
               }
              }
              print("Deseja continuar [sim] ou [nao] ");
              String? entradaj = stdin.readLineSync();
              resposta = entradaj!;
            }
             break;
            case 5:
          print("\nO  programa será fechado ! \n");
            exit(0);
             break;

        }
    }else{
        print("O valor está fora do intervalor, o programa será fechado. ");
        exit(0); // exit() passando zero como argumento  significa saida do programa
    }
  return retorno;
 }