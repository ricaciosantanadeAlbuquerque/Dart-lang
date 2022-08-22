//================== FUNÇOES SEM PARÂMETRO E SEM RETORNO ===========================================================  
 void main(){

  // função sem retorno e parâmetros
  menu(); // primeira chamada

  laco(); // segunda chamada

  colecao();// terceira chamada

 }

 void menu(){

  print("Olá seja bem vindo !");

 }

 void laco(){
   for(int i = 0; i <= 100 ; i++){
    print(" O valor  é  $i "); 
   }
 }

 void colecao(){

  List<int> num1 = [];

  for(int j = 0; j <= 100; j++){
    num1.add(j);
  }

   num1.forEach((element) {
    print(element);
   });
   print("\n O seu tamanho é ${num1.length} posições.");
   num1.clear();

   print("\n Não há elementos na lista "+num1.toString()+"\n");
 }