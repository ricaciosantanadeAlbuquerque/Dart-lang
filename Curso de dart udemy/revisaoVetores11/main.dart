/**
 * Faça uma classe que simule a ocupação dos quartos de um Hotel. 
 */
import 'dart:io';

void main() {
  int cont1 = 1;
  String resposta = "sim";
  List<String> hotel = ['livre', "livre", "livre", "livre", "livre"];

  do {

    int cont = 1;
    for (var element in hotel) {
      print("Quarto ${cont++}, $element");
    }

    print("Digite o número do quarto que você deseja ocupar ");
    String? entrada = stdin.readLineSync();
    if (entrada != null) {
      if (entrada.isNotEmpty)
        try {
          int numero = int.parse(entrada);

          for (int j = 0; j < hotel.length; j++) {
            if (numero - 1 == j) {
              if (hotel[j] == "livre") {
                hotel[j] = "ocupado";
              }
            }
          }
          for (int i = 0; i < hotel.length; i++) {
            print(hotel[i]);
          }
        } catch (e) {
          throw Exception("Digite apenas valores numéricos");
        }
    }

    print("Digite [sim] para continuar e [nao] para sair ");
    String? entrada1 = stdin.readLineSync();
    resposta = entrada1!;
  } while (resposta == "sim");
}
