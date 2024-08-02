/**
 * try: Usado para fazer testar uma lógica
 * catch:  captura erros na lógica do try
 * on : usado para trata exceções já conhecidas
 * throw Exception: Exceção criada pelo usuário e tratada no catch
 * finally: executado no final da estrutura try/catch, com excecao ou não. Utilizado para liberar recursos na logica try
 * stack trace: s  permite ler a pilha e execução e saber onde está o erro
 */

void main(){
 caso1();
 caso2();
 caso3();
 caso4();
 caso5();
}

/// Quando você desconhece a exceção,  use a clausula try catch
void caso1(){
  try{
   int result = 1 ~/ 0;
   print(result);
  }catch(e){
    print(e); // e == Exception
  }
}
/// Quando já conhecemos a possível exceção  devemos utilizar a clausula on
void caso2(){
  try{

   int valorA = 1 , valorB = 0;
   int result = valorA ~/ valorB;

   print(result);
  }on UnsupportedError{
    print('Não é possível fazer divisão inteira por zero');
  }catch(e){
   print('Exceção: $e');
  }
}
/// Para descobrir eventos ocorridos antes da excecão, use stack trace
void caso3(){
  try{
    int valorA = 1 , valorB = 0;
    int result = valorA ~/ valorB;
    print(result);
  }catch(e,s){
    print('Excecao: $e');
    print('stack trace: $s'); // rastreamento de pilha stack trace
  } 
}
/// Use o finally  para tratamento após  a execução do try catch(), usado para liberar recursos usados na logica try/catch
void caso4(){
  try{
   num result = 1 ~/ 0;
   print(result);
  }catch(e){
    print(e);
  }finally{
    print('Executa independe de haver excecao ou não');
  }
}

/// O usuário pode tratar e lançar  execeções j[a]  tratadas o catch
void caso5(){
  try{
    int num1 = 1, num2 = 0;
    double result = num1 / num2;

    if(result.isInfinite) throw Exception('A varável num2 deve ser difirente de zero  !=');

    print(result);
  }catch(e){
    print('Excecao: $e');
  }finally{
    print('Executado apost try/catch');
  }
}