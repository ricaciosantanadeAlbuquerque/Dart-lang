void main(){
 caso1();
 print('==========');
 caso2();
print('==========');
 caso3();
print('==========');
caso4();
print('==========');
caso5();

}

/// Quando não não conhecemos a exceção use trycatch()
void caso1(){
  try{
    int num1 = int.parse('recicacio');
    print(num1);
  }catch(e){
   print('Excecao: $e'); // Exceção de form,atação
  }
}
/// Quando nos sabemos qual exceção será lançada use on
void caso2(){
  try{
    int num1 = 1;
    int num2 = 0;
    int result = num1 ~/ num2;
    print('Resultado:$result'); 
  }on UnsupportedError{
    print('Não é possível  fazer divisão  por zero');
  }catch(e){
    print('Excecao:$e');
  }
}
/// Quando queremos visualizar a pilha de execução antes da exceção devemos usar stack trace
void caso3(){
  try{
   double numero = double.parse('jj');
   print(numero);
  }catch(e,s){
    print('Excecção $e');
    print('Stack trace $s');
  }
}
// finally sempre será executado !!!! Util  liberar recurso utilizado na lógica try/catch
void caso4(){
  try{
    int num1 = 1, num2 = 0;
    int result = num1 ~/ num2;
    print(result);
  }catch(e,s){
    print('Excecao: $e');
    print('Stack trace:$s');
  }finally{
    print(" Sempre será executado ");
  }
}

/// caso5 throw Exception() permite ao dev criar e lançar suas propias exceções
void caso5(){
   try{
   int num1 = int.parse('ricacio');
   print(num1);
   }catch(e){
    throw Exception('Não é possível converte um literal em número');
   }finally{
    print('Sempre executa');
   }
  
}
