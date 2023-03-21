/**
 * Elabore um método que recebe o valor do produto e o código de desconto. o desconto deve ser calculado de acordo com o código fornacido,
 *  1 == %5 2 == 10% 3 == %20 4 == 50%.  Utilizando a estrutura 'switch-case'  apresente em tela o novo valor do produto depois  de ser realizado o desconto. Caso o código do desconto fornecido não exista, deve ser emitida uma mensagem de aviso.
 */
import 'dart:io';

void main() {
  print("Digite o código do produto  entre 1 e 4 \n");
  String? entCodigo = stdin.readLineSync();
  print(" Digite o valor do produto !\n");
  String? entValor = stdin.readLineSync();

  // tratamento =============

  if (entCodigo != null && entValor != null) {
    if (entCodigo.isNotEmpty && entValor.isNotEmpty) {
      try {
        int codigo = int.parse(entCodigo);
        double valor = double.parse(entValor);
        if (codigo >= 1 && codigo <= 4) {
          // como estamos lidando com uma Closures que retorna uma função precisazaremos de uma variável

          var descCodi = desconto(codigo: codigo);
          print(descCodi);
          print("\n");
          descCodi(valor: valor);
        } else {
          print("\nValor fora da faixa.\n");
        }
      } catch (e) {
        throw Exception('ERRO! de conversão');
      }
    }
  }
}
//  'Closures' uma função declarada dentro do corpo de uma outra funcao.
Function desconto({required int codigo}) { // funcao 01
  
  return ({required double valor}) { // funcao 02
    switch (codigo) {
      case 1:
        var porcento = (5 * valor) / 100;
        var desconto = valor - porcento;

        print("\nO valor do produto $valor, e com desconto fica $desconto\n");
        break;
      case 2:
        var porcento = (10 * valor) / 100;
        var desconto = valor - porcento;

        print("\nO valor do produto $valor, e com desconto fica $desconto\n");
        break;
      case 3:
        var porcento = (20 * valor) / 100;
        var desconto = valor - porcento;

        print("\nO valor do produto $valor, e com desconto fica $desconto\n");
        break;
      case 4:
        var porcento = (50 * valor) / 100;
        var desconto = valor - porcento;

        print("\n O valor do produto $valor, e com desconto fica $desconto\n");
        break;
      default:
        print("\nO valor digitado está fora da faixa !!\n");
        break;
    }
    ;
  };
}
