import 'dart:ffi';

void comRetorno() {
  String conteito() {
    return 'Função com retorno explícito\n';
  }

  String somarValores(int a, int b) {
    var resultado = a + b;

    return 'Soma $a + $b = $resultado \n';
  }

  String verificarMaiorIdade(String nome, int idade) {
    var resposta;

    if (idade >= 18) {
      resposta = 'É maior de idade';
    } else {
      resposta = 'É menor de idade';
    }

    return '$nome, $resposta';
  }

  String contagemRegressiva(num numero) {
    var resposta;

    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('$i') : resposta = 'VAI !!';
    }

    return resposta;
  }

  String converterKMparaMilhas(dynamic array) {
    dynamic milhas = 0.621271;

    for (dynamic item in array) {
      print('$item\t km/h em Milhas/h  ${(item * milhas).toStringAsFixed(2)}');
    }

    return 'ARRAY convertido com sucesso !!';
  }

// ==============================================================================================================================
  print(conteito());
  print(somarValores(10, 50));
  print(verificarMaiorIdade('Lucas', 28));
  print(contagemRegressiva(10));
  print(converterKMparaMilhas([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
}

void main() {
  comRetorno();
}
