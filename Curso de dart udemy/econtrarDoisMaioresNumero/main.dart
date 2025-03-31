import 'dart:math';

/**
 * import 'dart:math';

void main() {
  //Dada uma lista de números inteiros, encontre os dois maiores números sem usar .sort().

  List<int> numeros = [];

// preenchendo a lista

  for (int i = 0; i < 10; i++) {
    numeros.add(Random().nextInt(10));
  }

  print(numeros);
  // ordenacao em da lista    bubbleSort

  int caixa = 0; // valor de caixa

  for (int i = 0; i < numeros.length; i++) {
    for (int j = i + 1; j < numeros.length; j++) {
      if (numeros[i] > numeros[j]) {
        caixa = numeros[i];
        numeros[i] = numeros[j];
        numeros[j] = caixa;
      }
    }
  }

  print('Lista ordenana $numeros');

// buscanco o maior valor
  var maior = 0;
  for (var valor in numeros) {
    if (valor > maior) {
      maior = valor;
    }
  }

// buscando o segundo maior valor
  var segundoMaior = 0;

  for (var valor in numeros) {
    if (valor == maior) break; // encerra o loop

    if (valor > segundoMaior) {
      segundoMaior = valor;
    }

  }

  print('O maior valor é $maior');
  print('O segundo maior valor é $segundoMaior');
}

 */

void main() {
  List<int> numeros =
      new List.generate(10, (_) => Random().nextInt(100)); // 0 a 99

  print('Litas Gerada $numeros\n');

  int maior = -1;
  int segundoMaior = -1;

  for (var numero in numeros) {
    if (numero > maior) {
      segundoMaior = maior; // o antigo maior vai para o segundoMaior
      maior =
          numero; // O maior valor que está em numeros vai para variável maior.
    } else if (numero > segundoMaior && numero != maior) {
      segundoMaior = numero;
    }
  }

  print('O maior valor $maior');
  print('O segundo maior valor $segundoMaior');
}
