 // =========ESTUDO DE FUNÇÕES COM PARÂMETRO E SEM RETORNO =========================================================================================

 void media(String nome,double nota1,double nota2, double nota3){
   
   double media = (nota1+nota2+nota3)/2;

   if(media >= 7 && media <=10){
      print("Você está  APROVADO !!  com a média ${media}");
   }else if( media >= 5 &&  media <=6.9){
      print("Você está em recuperação se esforce mais :(");
   }else{
      print(" Você está reprovado ! ");
   }


 }
 //============================PRINCIPAL================================================================================
void main(){
    // funcões com parâmetro

  soma(10,20); // como soma possui parâmetros é necessário passar valores como argumentos.
  media("Lucas",10,7.7,8); // chamada a função media
}
//===========SOMA===========================================================================================================

 soma(int a, int b){
  print("O valor da soma é ${a * b}");
 }