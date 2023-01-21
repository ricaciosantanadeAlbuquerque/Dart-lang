/// Uma loja deseja cadastrar 5 clientes e verificar se o faturamento da loja foi superior a loja B (faturamento = 54000).  Se o faturamento atingir esse valor mostre na tela uma mensagem contendo em quanto foi superado o faturamento.
import 'dart:io';

void main() {
  var arrayCliente = [];
  var arrayValor = [];
  double lojaB = 54000.00;
  double faturamentoA = 0;
  for (var i = 0; i < 5; i++) {
    print("Digite seu nome ");
    String? entrada = stdin.readLineSync();
    arrayCliente.add(entrada!);
    print("Digite o valor total da compra !");
    String? entrada1 = stdin.readLineSync();
    double valor1 = double.parse(entrada1!);
    arrayValor.add(valor1);
    faturamentoA += valor1;
  }
  print("Clientes ${arrayCliente}\n");
  print("Valores da compra de cada cliente! ${arrayValor}\n");

  if (faturamentoA >= lojaB) {
    print("Faturamento lojaB ${lojaB}\n");
    print("O faturamento da lojaA foi superior ao da lojaB ${faturamentoA}\n");
  } else {
    print("O valor do faturamento da lojaA ${faturamentoA} e está abaixo da lojaB ${lojaB}\n");
  }
}
