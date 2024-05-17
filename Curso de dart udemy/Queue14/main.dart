import 'dart:io';

import 'Dart:collection';
void main(){
Queue<Queue<String>> dadosPessoais = Queue();

  for(var i = 0; i < 5 ; i++){
    Queue<String> dados = Queue();
    for(var j  = 0; j < 1; j++){
      print('Digite o nome !');
      String? entradaNome = stdin.readLineSync();
      print('Digite o sexo !');
      String? entradaSexo = stdin.readLineSync();
      dados..add(entradaNome!)..add(entradaSexo!.toUpperCase());
    }
    dadosPessoais.add(dados);
  }

  print(dadosPessoais);
  print('Digite o sexo');
  String? entradaSexo = stdin.readLineSync();

  for(var element in dadosPessoais){
     element.forEach((e){
        if(e == entradaSexo!.toUpperCase()){
          print(element);
        }
     });
  }
}