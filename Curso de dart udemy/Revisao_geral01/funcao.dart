import 'dart:io';


void main(){
  soma();
  soma1(valor: 50, valor1: 70);
  print(soma2(valor: 250, valor1: 250));
  print(soma3(valor: 450, valor1: 300));
  var soma4 = ({required num valor, required num valor1}) => valor + valor1; 
  print(soma4(valor1: 500,valor:500));


  var soma5 = (num valor){
    return (num valor1){
      return valor + valor1;
    };
  };
  
  num Function(num) soma6 = soma5(120);

  print('O resultado soma6 ${soma6(200)}');
}
// ---------------------------- soma -----------------------------------------------------------------------
void soma(){

  print('Digite o primeiro valor');
  String? entradaValor = stdin.readLineSync();
  print('Digite o segundo valor');
  String? entradaValor2 = stdin.readLineSync();

    if(entradaValor != null && entradaValor2 != null){
      if(entradaValor.isNotEmpty && entradaValor2.isNotEmpty){
          try{
              num valor1 = num.parse(entradaValor);
              num valor2 = num.parse(entradaValor2);
              print('Soma dos valores ${valor1 + valor2}');
          }catch(e){
            throw Exception('ERRO!! de tratamento.');
          }
      }else{
        print('ERRO! o programa  será encerrado.');
        exit(0);
      }
    }else{
        print('ERRO! o programa será encerrado.');
    }
  ;}

// com parametros -------------------------------------------------------Soma---------------------------------------------------
  void soma1({required num valor,required num valor1}){
     print('Soma dos valores ${valor + valor1}');
  }

 // com parametro e com retorno ----------------------------------------soma ---------------------------------------------------
 num soma2({required num valor,required num valor1}){
    return valor + valor1;
 } 

 num soma3({required num valor,required num valor1}) => valor + valor1;

