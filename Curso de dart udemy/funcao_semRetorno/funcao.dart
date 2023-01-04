
void funcaoSemRetorno(){
  print("\nFuncão sem retorno !\n");

 
 // conceito(); // evocando ou chamando a funcao conceito()
  /**
   * AS chamadas as funções devem ser feitas depois de sua criação ou implementação
   */



void conceito(){

  print("Funcão void == sem retorno !");

  }
  conceito(); // nesta linnha de certo, justamente porque a funcao já está implementada 

// ========================SOMA================================
  void somarValores(int valorA, int valorB){

  var resultado = valorA + valorB; 

    print("\n A soma do valor $valorA e do $valorB é ${resultado}"); // \n new line

  }

  somarValores(20,30); // na chamada da função  somarValores() passamos 20 como argumento  para o parâmetro valorA e 30 para valorB
//=========================== IDADE===============================
   void verificarMaiorIdade(String nome, int idade){
    var resultado;

    if(idade >= 18){
      resultado = " é Maior de idade!";
    }else{
      resultado  = " não é menor de idade!";
    }
    print("\n$nome você $resultado ");
   }
  

  verificarMaiorIdade("LUcas",27);

  //=================CONTAGEM REGRESSIVA==============================

  void contagemRegressiva(int numero){
    for(var i = numero; i >= 0 ; i--){ // decremento de um em um
      print("Contagem: ${(i == 0) ? "==vai==": i}");
    }
  }

 contagemRegressiva(10);

 //======================== CONTAGEM REGRESSIVA =========================


  void converteKmparaMilhas(dynamic array){
       const dynamic milhas = 0.621271;

      // vamos multiplicar  a variável milhas por cada posição do array

      for(var item in array){

        print("$item\t Km/h em Milhas/h ${(item * milhas).toStringAsFixed(2)}");
      }



  }

  converteKmparaMilhas([10,55,44,7,100,23,24,45,32,30,]); // chamada a funcao passando uma array como argumento










}





void main(){
 funcaoSemRetorno();
 bemVindo();
}


void bemVindo(){
  print("Seja bem vindo ");
}

