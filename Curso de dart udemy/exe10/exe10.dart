import 'dart:io';

void main() {
  var arraySexo = [];
  var arrayNome = [];

  for (var i = 0; i < 5; i++) {
    print("Digite seu nome por favor !");
    String? nomeEntrada = stdin.readLineSync();

    print("Digite seu sexo ");
    String? sexoEntrada = stdin.readLineSync();
    arrayNome.add(nomeEntrada!);
    arraySexo.add(sexoEntrada!);
  }
  // busca
  print("Digite o sexo por favor sendo [H] ou [F]!");
  
  String? sexoEntrada = stdin.readLineSync();
  for (int j = 0; j < arraySexo.length; j++) {
    if (arraySexo[j] == sexoEntrada) {
      print("Sexo: ${arraySexo[j]} nome: ${arrayNome[j]}");
    }
  }
}
