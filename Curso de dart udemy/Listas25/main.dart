import 'dart:io';
void main(){
  opcoes();

}


 List<String> preencher(){
   int cont = 0;
  List<String> hotel = [];

  for (var i = 0; i < 50; i++) {  
    hotel.add('$cont Livre');
    cont++;
  }

  return hotel;
}


void opcoes(){
 final hotel = preencher();

  print('Digite [1] para Iprimir lista de quartos');
  print('Digite [2] para Definir ocupação dos quartos');
  print('Digite [3] para Sair');
  String? entradaOP = stdin.readLineSync();

    switch(int.parse(entradaOP!)){
      case 1:

      for(var element in hotel){
        print(element);
      }

      case 2:
      

      print('Digite o número do quarto que você deseja ocupar');
      String? entradaBusca = stdin.readLineSync();
      if(entradaBusca != null && entradaBusca.isNotEmpty){
          for( var i  = 0; i < hotel.length; i++){
               if(i == int.parse(entradaBusca)){
                
                   hotel[i] = 'Ocupado';
                   break;
                
               }
             }   
                       
      }else{
        print('ERRO! o programa será encerrado');
      }

       for (var element in hotel) {
        print(element);
      }
      case 3:
      print('O programa será encerrado ');
      exit(0);
    }
}