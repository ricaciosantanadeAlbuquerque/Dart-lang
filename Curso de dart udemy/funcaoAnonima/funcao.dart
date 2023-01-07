void main() {
  //============== funcao anonima comun
  var funcao = () {
    print("Valor");

    //=================================================================
    var f = () => print("A vida e bela !");
    // agora 'f' se torna uma função ao receber um função anônima.
    
    executarFuncaoP(p:f);
  };

  funcao(); // as variávies  recebem uma funcao anonima e se tornam uma funcao anonima.
  //=========== funcao anonima arrow! ==================================================
  var valores = ([int num1 = 0, int num2 = 0]) => num1 + num2;

  print("${valores(20, 54)}"); // nos parâmetros posicionais é  imprescindível que se obedeça a ordem.
}

void executarFuncaoP({Function? p}) => p!(); // estamos executando  o parâmetro 'p' que é uma funcao

/**
 * Criamos uma funcão sem retorno void, que recebe uma função  e executa está função 
 */

void dadosPessoa(Function p) {
  p();
}
