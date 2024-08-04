
/**
 *  try: Usado para testar uma lógica
 *  catch(): captura erros na lógica try
 *  on: Usando para tratar exceção já conhecidas
 *  throw Exception: Exceção cridada pelo usuário e tratada no catch
 *  finally: Sempre será executado independete de haver exceção. Utilizado para liberar recursos na lógica try/Catch 
 * 
 */
void main(){
  caso1();
  caso2();
  caso3();
  caso4();
  caso5();
}
/// caso1: Quando desconhecemos uma possível exceção.
void caso1(){
  try{
    int num1 = int.parse('kk');
    print(num1);
  }catch(e){
    print('Excecao:$e');
  }
}
/// caso2: Quando já conhecemos uma exceção.
void caso2(){
  try{
    int num1 = int.parse('ricacio');
    print(num1);
  }on FormatException {
    print('Não é possível converte uma letra em numero');
  }catch(e){
    print('Exception:$e');
  }
}
/// caso3: Stack trace utilizado para rastreamento de  de execução antes da exceção.
void caso3(){
  try{
   int num2 = int.parse('lucas');
   print(num2);
  }catch(e,s){
   print('Excecao:$e');
   print('Stack trace> $s');
  }
}
/// caso4: finally sempre será executado independente de haver ou não exceções. utilizado para liberar recursos na lógica trycatch.
void caso4(){
  try{
    num valor = int.parse('ricacio');
    print(valor);
  }catch(e){  
   print('Excecao:$e');
  }finally{
    print('Sempre será executado com ou sem exceção'); // finally é xecutado sempreeeee
  }
}
/// caso5: Criar e lançar minhas propias exceções
void caso5(){
  try{
    int valor1 = 1, valor2 = 0;
     double result = valor1 / valor2;
     if(result.isInfinite) throw Exception(' valor2 não pode ser 0');
  }catch(e){
   print('Excecao:$e');
  }finally{
  print('Sempre será executado');
  }
}