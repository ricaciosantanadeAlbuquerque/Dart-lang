import 'dart:io';

void main() {
  var array = hotel();
  busca(array: array);
}

List<List<String>> hotel() {
  List<List<String>> matriz = [];

  for (var linha = 0; linha < 5; linha++) {
    List<String> lista = [];
    for (var coluna = 0; coluna < 5; coluna++) {
      lista.add("Desocupado!");
    }
    matriz.add(lista);
  }

  for (var linha = 0; linha < 3; linha++) {
    for (var coluna = 0; coluna < 3; coluna++) {
      print("Numero: $linha $coluna == ${matriz[linha][coluna]}");
    }
  }
  return matriz;
}

void busca({required List<List<String>> array}) {
  int numero = 0;
  int numero1 = 0;
  String opc = "sim";
  do {
    print("Digite O número do quarto  que você deseja ocupar ");
    print("Digite o primeiro número ");
    String? posicao1 = stdin.readLineSync();
    print("Digite o segundo número ");
    String? posicao2 = stdin.readLineSync();

    if (posicao1 != null && posicao2 != null) {
      numero = int.parse(posicao1);
      numero1 = int.parse(posicao2);
    }

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (i == numero && j == numero1) {
          if (array[i][j] == "Desocupado!") {
            array[i][j] = "Ocupado!";
            break;
          } else {
            print("O quarto está ocupado ! Tente outro quarto ");
            break;
          }
        }
      }
    }

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        print("Numro: $i$j ${array[i][j]}");
      }
    }

    print(" Digite [sim] para continuar e [não] para sir ");

    String? p = stdin.readLineSync();
    opc = p!.toLowerCase();
  } while (opc == "sim");
}
