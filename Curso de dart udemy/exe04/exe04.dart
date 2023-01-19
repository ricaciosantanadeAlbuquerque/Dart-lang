/// Apresentando as quatro operações
import 'dart:io';

void main(List<String> args) {
  print("Digite o primeiro valor !");
  String? entrada = stdin.readLineSync();
  print("Digite o segundo valor ");
  String? entrada2 = stdin.readLineSync();

  if (entrada != null && entrada2 != null) {
    // tratando valores null
    if (entrada.isNotEmpty) {
      try {
        // conversão
        double num1 = double.parse(entrada);
        double num2 = double.parse(entrada2);

        operacoes(num1, num2); // nos parâmetros posicionais a ordem dos parametros deve ser obedecida

      } catch (NumberFormatException) {
        print("Digite apenas valores númericos válidos");
      }
    }
  }
}

// Função Arrow com parâmetros posicionais
void operacoes([double? v1, double? v2]) {
  print(
      "Soma: ${((v1! + v2!) == null) ? 'null informe os valores ' : v1 + v2} Subtração: ${((v1 - v2) == null) ? 'null informe os valores ' : v1 - v2} Multiplicação: ${((v1 * v2) == null) ? 'null informe os valores ' : v1 * v2} DIvisão: ${((v1 / v2) == null) ? 'null informe os valores ' : v1 / v2}");
}
