import 'dart:io';

void main() {
  String? senha = "JAVA";
  int count = 0;

  for (var i = 0; i < 3; i++) {
    print("Digite sua senha por favor !");
    String? entrada = stdin.readLineSync();

    if (senha == entrada!.toUpperCase()) {
      print("Senha válida !");
      break;
    } else {
      print("Senha Inválida!");
      count++;
    }

    if (count == 3) {
      print("Cartão Cancelado");
      exit(0);
    }
  }
}
