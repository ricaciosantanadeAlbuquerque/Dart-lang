
/*main(){
  double valor =getValor(); // a variável valor demostra um erro porque o valor de retorno não está sendo sendo utilizado,está função é custosa, pois pode levar tempos para retorna um valor e mesmo assim não ser executado,  por isso o erro;
  print("======Fim!====");
}
double getValor(){
  print("xxxxxxxxxxxxxxxxxx");
  return 15.0;
} */
 /*void main(){
   late double valorTotal = getValor(); // O operador "late" vai informa ao compilador que a variável "valorTotal" não está sendo executada ou utilizada, por tanto este trecho de código não deve ser executado, pois não faz sentido ter uma função que retorna um valor e mesmo assim não ser utilizado;

  print("Fim!");
 }
  double getValor(){
    print("============valor=======");
    return 1500.00;
  }*/
   void main(){
    late double valor = getValor();
      valor.toInt(); // toInt() transformado para inteiro;
      print(valor);
    print("Fim!");
    /*
    * Desta vez o compilador vai ler a linha 20 porque a variável valor do tipo double precedida pelo operador late diz ao compilador que "valor" está sendo utilizado na linha 21, portanto não haverá erro!
     */
   }
   double getValor(){
     print("===============F valor============");
     return 1500.00; 
   }