void main(List<String> args) {
  funcaoClosures();
}

// =================================Closures=================================================
void funcaoClosures() {
  var saudacao = (String nome) {
    var mensagem = (mensagem) {
      print("Olá $nome, $mensagem");
    };

    mensagem("seja bem vindo ");
  };

  saudacao("Lucas");

  // ==========================================================================================

  Function soma(int valorA) {
    return (valorB) {
      return valorA + valorB;
    };
  }

  var somarDez = soma(10); // estou passado 10 como argumento para a funcao soma ee jogando esta função para dentro da variavel

  print(somarDez(22));

  // ============================================================================================================

  Function multiplicar(int num1) {
    return (int num2) {
      return num1 * num2;
    };
  }

  var f = multiplicar(50);
  print(f(10));
  // ===============================================Media=================================================================

  Function media(int a) {
    return (int b) {
      return (int c) {
        return (a + b + c) ~/ 3;
      };
    };
  }

  ;

  var r1 = media(10);
  var r2 = r1(7);
  print(r2(8));

  // ============================================desconto ==================================================
  Function desconto(dynamic desconto) => (dynamic valor) => (desconto * valor);

  var descont = desconto(0.9);
  print(descont);

  var j = descont(100);
  print(j);
  // ============================================Closures sem retorno===========================================================

  var funcao1 = (dynamic nome) {
    var funcao2 = (dynamic sobreno) {
      print("$nome $sobreno");
    };
    var resultado2 = funcao2("Lins");
  };

  var resultado1 = funcao1("Ana");

  // =============================== bojeto ======================================================================

  var novoObjeto = () {
    // a variável novoObjeto recebe uma funcao anonima
    var id = 0;
    var objetoCriado = (String nome, dynamic descricao){
      return "id: ${++id} nome: $nome descrição: $descricao";
    };
    return objetoCriado; // é necessário retorna o valor para variável
  };

  print(novoObjeto);

  var objeto = novoObjeto();

  var listaObjetos = [objeto("ana", true),objeto("iPhone",3000.00),objeto("Fones",100.00)];

  for (var p in listaObjetos) {
    print(p);
  }
}
