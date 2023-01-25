/**
 * Closure são funções dentro de outras funções
 */
void main() {
  // Closure sem retorno
  var funcao = () {
    var mensagem = () {
      print("Olá seja Bem vindo !\n");
    };
    mensagem();
  };

  print("\n${funcao}\n");

  funcao();
// =============== Soma ==========================
  Function soma({int ValorA = 0}) {
    return (valorB) {
      return ValorA + valorB;
    };
  }

  var resultado = soma(ValorA: 15);

  print("\n ${resultado}\n");

  print("\n ${resultado(20)}\n");

  // ================ porcentagem =======================
  Function porcentagem([double desconto = 0]) => (valor) => desconto * valor;

  print(porcentagem(10));

  var descontarDez = porcentagem(1516);

  print("\n${descontarDez(0.9)}\n");

  // =============== multiplicalção ======================

  Function multiplicacao(dynamic p) => (dynamic j) => p * j;

  var num1 = multiplicacao(7);
  print("\n${num1}\n");

  var resposta = num1(1516);

  print("\n${resposta}\n");

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      id++;
      return "id: ${id.toString().padLeft(2, '0')} nome: $nome descricao: $descricao";
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();

  print("\n${objeto}\n");
  print("${objeto("Lucas", 37)}");

  var arrayObjetos = [objeto("bike", 1300), objeto('moto', 40000), objeto('ap', 200000)];

  for (var ob in arrayObjetos) {
    print(ob);
  }


  for (var ob in arrayObjetos) {
    print("\n${ob.substring(7)}\n");
  }
}
