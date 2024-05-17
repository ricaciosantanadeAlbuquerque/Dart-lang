import 'dart:io';
import 'dart:math';
import 'dart:collection';
void main(){
  Queue<Queue<int>> caixaNumericaValor = Queue();

  for(var i = 0; i < 50; i++){
    Queue<int> caixa = Queue();
     for(var j = 0; j < 20; j++){
        caixa.add(Random().nextInt(1000 + 1));
     }
     caixaNumericaValor.add(caixa);
  }
  print(caixaNumericaValor);
  var result = false;
  var valor = 0;

  print('Digite o valor que Você busca');
  String? entradaValor = stdin.readLineSync();
  if(entradaValor != null && entradaValor.isNotEmpty){
     int busca = int.parse(entradaValor);

     for(var i = 0; i < caixaNumericaValor.length; i++){
        var element = caixaNumericaValor.elementAt(i);
       for(var j  = 0; j < element.length;j++){
            var e = element.elementAt(j);

            if( e == busca){
              result = true;
              valor = e;
              break;
            }
         }
     }

     if(result){
       print('Valor exite dentro da coleção e é ${valor}');
     }else{
       print('Não encontrado');
     }
  }

}