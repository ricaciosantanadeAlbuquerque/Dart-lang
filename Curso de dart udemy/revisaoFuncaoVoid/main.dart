void semRetorno() {
  // closure
  void conceito() {
    // função sem retorno e sem parâmetros
    print('Função void sem retorno');
  }

  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;

    print('Soma: $valorA + $valorB = $resultado');
  }

  void verificarMaiorIdade(String nome, int idade) {
    var resposta; // decalaração de variável
    //print(resposta.runtimeType);
    if (idade >= 18) {
      resposta = 'É maior de idade !';
    } else {
      resposta = 'É menor de idade !';
    }
    print(resposta.runtimeType);
    print('$nome $resposta');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('Contagem ${(i == 0) ? 'VAI !!' : '$i'}');
    }
  }

  void converterKparaMilhas(dynamic array) {
    dynamic milhas = 0.621271;

    for (var item in array) {
      print('$item\t KM/h em Milhas/h ${(item * milhas).toStringAsFixed(2)}');
    }
    
  }
  // Toda função em Dart deve ser invocada após a sua declaração.

  conceito();
  somarValores(15, 45);
  verificarMaiorIdade('Lucas', 28);
  contagemRegressiva(30);
  converterKparaMilhas([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
}

void main() {
  semRetorno();
}
