import 'dart:math';
import 'dart:io';
/** Faça Um método que recebe um número inteiro e um array de inteiro, pesquise se esse número  existe no array e retorne true caso o valor seja encontrado  ou false caso o valor não exista  */
void main() {
  List<int> listaInteiro = [];

  for (var i = 0; i < 5; i++) {
    var n = Random().nextInt(10 + 1);
    listaInteiro.add(n);
  }
  print(listaInteiro);
  print("Digite o valor que você busca ! ");
  String? entrada = stdin.readLineSync();
  int num1 = int.parse(entrada!); // usando anotações diferentes do if
  print("${(buscaNumero(num1, listaInteiro) ? 'O valor foi encontrado ' : ' O valor não existe')}"); // uso do ternário
}

bool buscaNumero(int numero, List array) {
  bool achou = false;
  for (var valor in array) {
    if (valor == numero) {
      achou = true;
      break;
    }
  }

  return achou;
}
