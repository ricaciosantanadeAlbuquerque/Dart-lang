void main(List<String> args) {
  funcaoComRetorno(); // chamada ao método funcaoComRetorno()
}

void funcaoComRetorno() {
  print("Função com retorno !");

  String conceito() {
    return "Função com retorno ";
  }

  conceito(); // aque o valor não está sendo mostrado, retorna porém nem é guardado em uma variável e nem mostrado

  print(conceito());

  // ============ somando valores

  String somaValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return " \nA soma de $valorA e $valorB  =  $resultado\n";
    /**
     * No dart é possível retornar os valores numericos dentro das Strings como se estivessem concatenadas, utilizando o coringa $ e a interpolação de Strings{} 
     */
  }

  print(somaValores(20, 30));

  //================= Maior

  String maiorIdade(String nome, int idade) {
    var resultado;

    if (idade >= 18) {
      resultado = "é maior de idade";
    } else {
      resultado = "não é maior de idade";
    }
    print(resultado.runtimeType); // runtimeType é um atribulto  que nos permite saber o tipo da variável.
    return resultado;
  }

  print(maiorIdade("Lucas", 27));

  //====================== contagem regressiva =======================

  String contagemRegressiva(int numero) {
    var resultado; // variável declarada

    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print("Contagem: $i") : resultado = "Contagem: vai !";
    }

    return resultado;
  }

  print(contagemRegressiva(10));

  //=============== KM em milhas ======================================

  String converteKmparaMilhas(dynamic array) {
    // recebe um []
    const dynamic milha = 0.621271; // cada elemento do array deve ser multiplicado  pela const milha

    for (var item in array) {
      print("$item em KM/h em milhas/h ${(item * milha).toStringAsFixed(2)}");
    }
    return "Array convertido e arredondado ";
  }

  print(converteKmparaMilhas([10, 12, 33, 44, 23, 11, 16, 17, 18, 100, 110, 76, 87]));
}
