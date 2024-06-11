import 'dart:math';
void main(){
   /// estrutura condicional simples.
  if(Random().nextInt(10) > 5){ 
    print('o Valor é maior que 5');
  } 

  print('FIM conde !');

/// estrutura condiconal composta.
  if(Random().nextInt(10) > 5){ 
    print('O valor é maior que 5');
  }else{
    print('O valor não é maior que 5');
  }

  /// estrutura condicional encadeada
  var valor = Random().nextInt(120);
  if(valor > 0 && valor < 59){
    print('Peso pena');
  }else if(valor > 60 && valor < 72){
    print('Peso normal');
  }else if(valor > 73 && valor < 100){
    print('Peso pesado !!');
  }else{
    print('Obesidade Morbida');
  }


  /// estrutura condicional aninhada
  if(valor > 40){
    if(valor > 60){
      if(valor > 80){
        print('Seu peso é $valor');
      }
    }else{
      print('não foi dessa Vez o peso $valor');
    }
  }else{
   print('Não foi dessa vez o peso $valor');
  }

}