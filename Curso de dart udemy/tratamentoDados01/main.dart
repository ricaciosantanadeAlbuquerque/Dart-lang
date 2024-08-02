void main(){
  caso1();
  print('');
  caso2();
  print('');
  caso3();
  print('');
  caso4();
}
/// try é usado para testar uma lógica. try usado para quando não sabemos qual exceção será lançada
caso1(){
  try{
    int resultado  = 1 ~/ 0;
     print(resultado);
  }catch(e,s){ // captura exceções atraves do parâmetro.
     print('Excecao: $e');
     print('stack trace: $s');
  }
}


/// on é utilizado para exceções já conhecidas.
caso2(){
  try{
    int result = 1 ~/ 0;
    print('Resultado:$result');
  }on UnsupportedError{
    print('Não podemos dividir um número inteiro por zero.');
  }catch(e){
   print('Excecao: $e');
  }
}

/// finally é muito utilizado  para liberar recursos utilizados na lógica do try catch()
/**
 *  try  abre um db
 *  catch() captura alguma falha,alguma exceção
 * finally usado para fechar  o banco depois que ele foi aberto e usado no try
 */
void caso3(){

  try{

  int result = 1 ~/ 0;
  print(result);

  }catch(e,s){
    print('Excecao $e');
    print('stack trace $s');
  }finally{
    print('Tendo ou não exceções o finally é executado');
  }
}


void caso4(){
   try{
    int valorA = 1, valorB = 0;
    int result = valorA ~/ valorB;
    if(result.isInfinite) throw Exception('Não se pode fazer divisão inteira por 0');
    print(result);
   }catch(e,s){
    print('Excecao: $e');
    print('stack trace: $s');
   }finally{
    print('Será executado de qualquer forma');
   }
}