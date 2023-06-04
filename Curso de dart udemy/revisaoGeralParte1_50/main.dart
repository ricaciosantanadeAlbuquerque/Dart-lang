/// Closures ocorre quando uma funcao é declarada dentro do copro de outra funcao!
/// Podendo retornar as variáveis locais e da função superior.
void funcaoClosures() {
  var saudacao = (String nome) {
    var mensagem = (dynamic complemento) => print("\n Olá $nome $complemento \n"); // a função interna pode enchergar tudo da funcao pai

    mensagem("Bem Vindo!!"); // chamada a funcao interna
  };
  print(saudacao);
  saudacao('Lucas'); // chamada a closures
//================================================================

  var somar = (int valorA) {
    return (valorB) {
      return valorA + valorB;
    };
  };

  var somarDez = somar(20);

  print(somarDez);
  print(somarDez(10));
//================================================================

  Function multiplicar(num num1) {
    return (num num2) {
      return num1 * num2;
    };
  }

  var resultado = multiplicar(7);
  print(resultado);
  print(resultado(55));
  //================================================================
  Function porcentagem(dynamic desconto) => (dynamic valor) => desconto * valor;

  var resultado2 = porcentagem(0.8);
  print(resultado2);
  print(resultado2(100));
}

void main() {
  funcaoClosures();
}
