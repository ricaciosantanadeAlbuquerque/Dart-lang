

import 'dart:io';
void main(){
  String? cor ;
  var mapa = {"cor1": "verde","cor2":"Amarelo","cor3":"zul","cor4":"vermelho","cor":"preto"};
  
    print("Digite a cor que vc busca");
    String? entrada = stdin.readLineSync();
     bool achou = false;
   mapa.forEach((key, value) {
    if(entrada == value){
      achou = true;
      cor = value;
    }
   });
   if(achou == true){
    print("O valor  foi achado [${cor}] ");
   }else{
    print("O valor não existe");
   }
}