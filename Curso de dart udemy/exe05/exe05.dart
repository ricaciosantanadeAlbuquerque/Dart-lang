import "dart:io";

void main() {
  var resultado = menu();
  var resposta = desconto(resultado);
  print("O valor do produto com desconto é de ${resposta}");
}

//===============Menu===========================
int menu() {

  int opcao = 0;

  print("==========Desconto===========");
  print("Digite 1 para 5% de desconto!");
  print("Digite 2 para 10% de desconto!");
  print("Digite 3 para 20% de desconto!");
  print("Digite 4 para 50% de desconto!");
  String? op = stdin.readLineSync();
  if (op != null) {
    opcao = int.parse(op);
  }
  return opcao;

}

//===============Desconto========================

double desconto([var opcao]) {
  var resultado;
  switch (opcao) {
    case 1:
      print("Digite o valor do produto");
      String? entrada = stdin.readLineSync();
      if (entrada != null) {
        double valor = double.parse(entrada);
        var porcento = (valor * 5) / 100;
        resultado = valor - porcento;
      }
      break;
    case 2:
      print("Digite o valor do produto");
      String? entrada = stdin.readLineSync();
      if (entrada != null) {
        double valor = double.parse(entrada);
        var porcento = (valor * 10) / 100;
        resultado = valor - porcento;
      }
      break;
    case 3:
      print("Digite o valor do produto");
      String? entrada = stdin.readLineSync();
      if (entrada != null) {
        double valor = double.parse(entrada);
        var porcento = (valor * 20) / 100;
        resultado = valor - porcento;
      }
      break;
    case 4:
      print("Digite o valor do produto");
      String? entrada = stdin.readLineSync();
      if (entrada != null) {
        double valor = double.parse(entrada);
        var porcento = (valor * 50) / 100;
        resultado = valor - porcento;
      }
      break;
    default:
      print("Valor fora da faixa!");
      exit(0);
  }
  return resultado;
}
