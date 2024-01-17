import 'dart:io';

/**
 * Elabore um programa que recebe o valor de um produto e o código de desconto. Utilizando a estrutura switch case  apresente em tela  o * novo valor do produto, depois de ser realizado o desconto. Caso o código do desconto não exista, deve ser emitida uma mensagem de aviso.
 */
void main() {
  print('Digite o valor do produto');
  String? valorEntrada = stdin.readLineSync();
  print('Digite o código do produto');
  String? codigoEntrada = stdin.readLineSync();

  if (valorEntrada != null && codigoEntrada != null) {
    if (valorEntrada.isNotEmpty && codigoEntrada.isNotEmpty) {
      try {
        num valorProduto = num.parse(valorEntrada);
        num codigoProduto = num.parse(codigoEntrada);

        switch (codigoProduto) {
          case 1:
            double porcentagem = (valorProduto * 5) / 100;
            double novoValor = valorProduto - porcentagem;
            print('Valor do produto: $valorProduto, desconto:5%, Novo valor: $novoValor');
            break;
          case 2:
            double porcentagem = (valorProduto * 10) / 100;
            double novoValor = valorProduto - porcentagem;
            print('Valor do produto: $valorProduto, desconto:10%, novoValor: $novoValor');
            break;
          case 3:
            double porcentagem = (valorProduto * 20) / 100;
            double novoValor = valorProduto - porcentagem;
            print('Valor do produto:$valorProduto, desconto:20%, novoValor:$novoValor');
            break;
          case 4:
            double porcentagem = (valorProduto * 0.5);
            double novoValor = valorProduto - porcentagem;
            print('Valor do produto: $valorProduto, desconto: 50%, novoValor:$novoValor');
            break;
          default:
            print('ERRO!!! o código de desconto não existe.');
            exit(0);
        }
      } catch (e) {
        throw Exception(' ERRO !!! a variável valorEntrada:($valorEntrada) ou a variável codigoEntrada: ($codigoEntrada) não são valores numéricos');
      }
    } else {
      print('ERRO!!! valores vazios, é necessário digitar algo');
    }
  } else {
    print('ERRO! valor nulo.');
  }
}
