// Utilizando o conceito de Closures, faca uma calculadora com as 4 operações basicas.
import 'dart:io';

void main() {
  executar();
}

void executar() {
  print('Digite [1] para somar ');
  print('Digite [2] para subtrair ');
  print('Digite [3] para multiplicar');
  print('Digite [4] para dividir ');
  String? entradaOp = stdin.readLineSync();
  print('Digite o primeiro valor ');
  String? entradaValor1 = stdin.readLineSync();
  print('Digite o segundo valor');
  String? entradaValor2 = stdin.readLineSync();

  var calculadora = ({required int op, required num valor1}) {
    return ({required num valor2}) {
      num resultado = 0;

      switch (op) {
        case 1:
          resultado = valor1 + valor2;
          break;
        case 2:
          resultado = valor1 - valor2;
          break;
        case 3:
          resultado = valor1 * valor2;
          break;
        case 4:
          resultado = valor1 / valor2;
          break;
        case 0:
          print('Valor fora da faixa');
          break;
      }

      return resultado;
    };
  };
  print(calculadora);
  print('');
  var calculo = calculadora(op: int.tryParse(entradaOp!) ?? 0, valor1: num.tryParse(entradaValor1!) ?? 0);
  print('');
  print(calculo);
  print('');
  print('O resultado da operação ${calculo(valor2: num.tryParse(entradaValor2!) ?? 0)}');
}
