import 'dart:io';

void main(){
  int cont = 0;

  while(cont <=100){
      print('Valor ${cont}');
      cont++; // condição de quebra da estrutura de repetição.
  }

  // muito utilizado para quando não se sabe a quantidade de repetições que o programa deverá fazer. Exemplo !
  String entradaValor = 'sim';

  while(entradaValor.toLowerCase() == 'sim'){
      print('Digite sim para continuar e nao para sair');
      String? entrada = stdin.readLineSync();
      entradaValor = entrada!;
  }


}