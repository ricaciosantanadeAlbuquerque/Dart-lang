/**
 * try: Usado para testar uma lógica.
 * catch: captura erros na lógica try.
 * on: usado para tratar  exceções já conhecidas.
 * finally: executado ao final da lógica try/Catch,útilizado para liberar recursos na lógica tryCatch
 * throw Exception: permite ao usuário criar exceções ee lançar as mesmas.
 */

void main(){
  caso1();// chamada a função
  caso2();
  caso3();
  caso4();
  caso5();
}

// Use try/Catch Quando não sabemos qual exceção pode ocorrer. 
void caso1(){
  try{
    var num1 = 1, num2 = 0;
    var result = num1 ~/ num2;
    print('resultado:$result');
  }catch(e){
    print('Excecao:$e');
  }
}
// on: deve ser usado quando sabemos qual exceção ocorrerá  
void caso2(){
  try{
   int numero = int.parse('ricacio');
   print(numero);
  }on FormatException{
    print('Não é possível converte um literal Letras, em numeros');
  }
  catch(e){
   print('Excecao:$e');
  }
}

// stack trace == rasteramento de pilha
void caso3(){
  try{
    int num1 = 1, num2 = 0;
    var result = num1 ~/ num2;
    print(result);
  }catch(e,s){
    print('Excecao:$e');
    print('stack trace:$s');
  }
}

// finally sempre será executado com ou sem exceção. Muito utilizado para liberar recursos na lógica tryCatch

void caso4(){
  try{
    int num1 = 1, num2 = 0;
    int result = num1 ~/ num2;
    print(result);
  }catch(e,s){
    print('Excecao:$e');
    print('Stack Trace:$s');
  }finally{
   print('finally sempre será executado');
  }
}
// throw Exception(), nos permite criar e lançar  nossas própias excecoes
void caso5(){
  try{
  int num1 = 1, num2 = 0;
  var result = num1 / num2;
  if(result.isInfinite) throw Exception('Não se pode dividir por 0');
  print(result);
  }catch(e){
    print('Excecao:$e');
  }finally{
    print('Sempre é executado ');
  }
}