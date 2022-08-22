
import 'dart:io';
Map<String,int> telefone = {
  'carlos': 123456,
  'joao': 9987875433,
  'matheus': 1212998734,
};
void main(){
  print(telefone['carlos']);
  print(telefone.keys);
  print(telefone.values);
  print(telefone.length);

  //=======================================================================================
  var mapaCidade = {'PB':" joao Pessoa", 'PE':"Recife", 'RN':"Natal",
  'SP':"Sao Paulo", 'RJ':"rio de janeiro", 'MG':"Minas Gerais",
  };
   mapaCidade.forEach((key, value) {
    print("  chaves => ${key} e os valores => ${value}");
   });

   //mapaCidade.keys.forEach((element) {})
   mapaCidade.keys.forEach((Element){
    print("Chaves = > ${Element}");
   });
  
  

    Map<int,List<int>> numero = Map();
    List<int> num1;
     for(int i = 0; i < 3; i ++){
       num1 = [];
      for(int j = 0; j < 3;j++){
        num1.add(j);
      }
      numero[i] = num1; //  o map numero na chave [i] recebe  a lista num1
      /**
       * é como um array!  map na posição [0] = list<int> num1 
       */
     }
      numero.forEach((key,value){
        print("O valor das chaves => $key");
        print("Os Volores => ${value}");
      });
   
}