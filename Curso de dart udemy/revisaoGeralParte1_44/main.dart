import 'dart:io';

void main() {
  print("Digite o dia mês e ano de pagamento  no formato 12 11 2008");
  String? entradaValor = stdin.readLineSync();

  if (entradaValor != null) {
    if (entradaValor.isNotEmpty == true) {
      try {
        print("Mês: ${pagueMes(entradaValor)}");
      } catch (e) {
        throw Exception('ERRO!');
      }
    } else {
      print("ERRO! o valor  está inválido.");
    }
  } else {
    print("ERRO! valor nulo !");
  }
}

int pagueMes(String mes) {
  var filtro = mes.substring(3,6);

  return int.parse(filtro);
}
