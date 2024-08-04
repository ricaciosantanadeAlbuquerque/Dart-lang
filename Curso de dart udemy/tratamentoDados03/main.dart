/**
 * try: Usado para testar uma lógica.
 * catch(): Captura os erros na lógica try.
 * on: usado para  exceções já conhecidas.
 * throw: permite ao usuário criar uma exceção e lança-la.
 * finally: Executado ao final do try/Catch(). com exceção ou não, utilizado para liberar recursos na lógica trycatch()
 */

void main(List<String> args){
   caso1();
   print('---------------- ----------------');
   caso2();
    print('---------------- ----------------');
  caso3();
    print('---------------- ----------------');
  caso4();
    print('---------------- ----------------');
  caso5();

}

/// caso1: Quando você desconhece a exceção, usa try catch()


void caso1(){
  try{

    int num1 = 1, num2 = 0;
    int result = num1 ~/ num2;
    print(result);

  }catch(e){ 
    print(e); // será mostrada a exceção que é enxergada pelo parâmetro try
  }

}

/// Quando você já conhece a exceção, use a clasula on
void caso2(){
  
  try{
    int num1 = 1, num2 = 0;
    int result = num1 ~/ num2;
    print(result);
  }on UnsupportedError {
   print('Exceção: Não é permitido divisão inteira por zero');
  }catch(e){
    print('Exceção: $e');
  }
}


/// Caso3 Para descobrir eventos ocorridos antes da exceção usa o stack trace!

void caso3(){
  try{
    int result = 1 ~/ 0;
    print(result);
  }catch(e,s){
   print('Excecao: $e');
   print('Stack trace: $s');
  }
}

/// caso4: finally para tratamento apos execução trycatch: usado para liberar recursos usados apos a lógica try catch
void caso4(){
   try{
    int valor1 = 1, valor2 = 0;
    int result = valor1 ~/ valor2;
    print('Resultdo:$result');
   }catch(e){
    print('Excecao: $e');
   }finally{
    print('Será executado sempre! com ou sem  excecao,');
   }
}

/// caso5 permite ao usuário criar e lançar execeções.

void caso5(){
  try{
   int num1 = 1, num2 = 0;
   double result = num1 / num2;
   if(result.isInfinite) throw Exception('A variável num2 deve ser diferente de 0');
   print(result);
  }catch(e){
   print('Excecao:$e');
  }finally{
  print('Sempre executado !!');
  }
}