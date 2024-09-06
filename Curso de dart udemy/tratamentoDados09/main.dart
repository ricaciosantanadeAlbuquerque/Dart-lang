void main(List<String> args){
  //caso1();
  //caso2();
  //caso3();
  //caso4();
  //caso5();
  caso6();
}

///Quando você desconhece a excecção, use tryCatch()
void caso1(){

  try{
    int resultado = 1 ~/ 0;
    print('Resultado $resultado');
  }catch(e){
    print('Excecao:$e');
  }
}

// Quando você já conhece a exceção, use a clausula ON
void caso2(){
  try{
  int result = 1 ~/ 0;
  print('Resultado:$result');
  }on UnsupportedError {
  print("Exceção: Não é possível fazer divisão inteira por zero");
  }catch(e){
  print('Exceção:$e');
  }
}

/// on quando sabemos qual é a exceção  causada no try
void caso3(){
  try{
    int num1 = int.parse('A');
    print('Resultado $num1');
  }on FormatException{
  print('Exceção: Não foi possível fazer a converção.');
  }catch(e){
  print('Exceção:$e');
  }
}

/// Para descobrir eventos antes da exceção use  Stack Trace
void caso4(){
  try{
    int result = 1 ~/ 0;
    print('Resultado:$result');
  }catch(e,s){
   print('Excecao:$e');
   print('Stack Trace:$s');
  }
}

/// Use o finally  para tratamento apos o tryCatch() : Muito utilizado para liberar recurso na lógica tryCatch()
void caso5(){

  try{
    num value = num.parse('bb');
    print('Result: $value');
  }catch(e){
  print('Excecao:$e');
  }finally{
  print('Finally sempre será executado com  ou sem exceção');
  }



}

/// throw Exception
void caso6(){
num num1 = 1, num2  = 0 ;
double  resultado = num1 / num2;
if(resultado.isInfinite) throw Exception('A variavel [num2], deve ser difirente de zero');

}

/**
 * try{}on{}catch(e,s){}finally{}
 * throw Exception()
 */