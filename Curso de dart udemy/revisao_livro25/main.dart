void semRetorno() {
  print('Funções sem retono !\n');

  void conceito() {
    print("Funções void - significa sem retorno\n");
  }

  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('a soma de $valorA + $valorB == $resultado \n');
  }

  void verificarMaiorIdade(String nome, int idade) {
    var resposta;

    if (idade >= 18) {
      resposta = 'é maior\n';
    } else {
      resposta = 'não é maior\n';
    }

    print('$nome $resposta de idade\n');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('${(i == 0) ? 'Vai !!!' : i}');
    }
  }

  void convertendoKmParaMilhas(dynamic array) {
    final dynamic milhas = 0.621271;

    for (dynamic item in array) {
      print('$item\t km/h em milhas/h ${(item * milhas).toStringAsFixed(2)}');
    }
  }

// =================================
  conceito();
  somarValores(2, 3);
  verificarMaiorIdade('Lucas', 23);
  verificarMaiorIdade('Ana', 3);
  contagemRegressiva(5);
  convertendoKmParaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 140, 160, 180, 200]);
}

void comRetorno() {
  String conceito() {
    return 'funções com retorno!';
  }

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'A soma  de $valorA + $valorB == $resultado';
  }

  String verificarMaiorIdade(String nome, int idade) {
    var resposta;

    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'Não é maior';
    }

    return '$nome $resposta de idade.';
  }

  String contagemRegressiva(int numero) {
    var resultado;

    for (var i = numero; i >= 0; i--) {

      (i != 0) ? print(' Contagem: $i') : resultado = 'Contagem vai !!!';
    }

     return resultado;

  }

  print(conceito());
  var receber = somarValores(20, 220);
  print(receber);
  print(verificarMaiorIdade('Ricacio', 28));
  print(contagemRegressiva(5));
}

void main() {
  semRetorno(); // chamada a funcao semRetorno
  print('=======================================================');
  comRetorno();
}
