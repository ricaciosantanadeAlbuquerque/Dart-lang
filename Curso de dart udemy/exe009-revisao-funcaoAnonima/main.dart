import 'dart:io';

/**
 * Funções Anônimas (Arrow Functions)
 * Crie uma função anônima que receba dois números e retorne a soma deles.
 */
void main() {
  var resultado = ({num valor1 = 0, num valor2 = 0}) => valor1 + valor2;
  stdout.write('Resultado ${resultado(valor1: 10, valor2: 20)}');
  print('');

  var somarValores = soma(25);
  print(somarValores(2));

  votar('Ricacio');
}

/**
 * Closures
 * Crie uma função que retorna outra função. A função interna deve multiplicar
 * um número recebido pelo valor fornecido na função externa.
 */

int Function(int) soma(int valor1) {
  return (int valor2) {
    return valor1 * valor2;
  };
}

void votar(String nome) {
  void direito(int idade) {
    if (idade >= 18 && idade < 70) {
      stdout.write('Pode votar');
    } else if (idade >= 16 && idade < 18 || idade > 70) {
      stdout.write('Voto opcional');
    } else {
      stdout.write('Não pode votar !');
    }
  }

  direito(18);
}
