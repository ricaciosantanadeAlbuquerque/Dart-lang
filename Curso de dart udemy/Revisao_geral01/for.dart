import 'dart:math';

void main(){
  for(var i  = 0;  i < 10 ; i++){
    print(i);
  }

  print('');

  for(var j = 20; j >= 0 ; j--){
    print(j);
  }

 print('');

  List<num> listNumero = [];

  for(var y = 0; y < 10;y++){
    listNumero.add((1 + Random().nextDouble()) * 2);
  }

  print(listNumero);

  for(var element in listNumero){ // percorre a lista pegando cada elemento da lista e jogando para !! element.
    print(element);
  }
}